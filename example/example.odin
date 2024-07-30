package main

import clang ".."
import "base:runtime"
import "core:fmt"
import "core:os"

main :: proc() {
    index := clang.createIndex(0, 0)
    unit := clang.parseTranslationUnit(
        index,
        "example/example.c",
        nil,
        0,
        nil,
        0,
        u32(clang.CXTranslationUnit_Flags.CXTranslationUnit_None),
    )

    if unit == nil {
        fmt.eprintln("Unable to parse translation unit... Quitting.")
        os.exit(1)
    }

    cursor := clang.getTranslationUnitCursor(unit)

    clang.visitChildren(
        cursor,
        proc "c" (
            cursor, parent: clang.CXCursor,
            client_data: clang.CXClientData,
        ) -> clang.CXChildVisitResult {
            context = runtime.default_context()

            current_display_name := clang.getCursorDisplayName(cursor)
            defer clang.disposeString(current_display_name)

            unit := clang.Cursor_getTranslationUnit(cursor)
            kind := clang.getCursorKind(cursor)
            parent_kind := clang.getCursorKind(parent)
            type := clang.getCursorType(cursor)
            cursor_range := clang.getCursorExtent(cursor)

            type_kind_spelling := clang.getTypeKindSpelling(type.kind)
            defer clang.disposeString(type_kind_spelling)
            kind_spell := clang.getCursorKindSpelling(kind)
            defer clang.disposeString(kind_spell)
            parent_spell := clang.getCursorKindSpelling(parent_kind)
            defer clang.disposeString(parent_spell)

            line, column, offset: [2]u32 = ---, ---, ---
            file: clang.CXFile = ---

            clang.getExpansionLocation(
                clang.getRangeStart(cursor_range),
                &file,
                &line[0],
                &column[0],
                &offset[0],
            )
            clang.getExpansionLocation(
                clang.getRangeEnd(cursor_range),
                &file,
                &line[1],
                &column[1],
                &offset[1],
            )

            fmt.printfln(
                "Visiting element \"{}\" parent={} kind={} type_kind={} line={}-{} column={}-{} offset={}-{}",
                clang.getCString(current_display_name),
                clang.getCString(parent_spell),
                clang.getCString(kind_spell),
                clang.getCString(type_kind_spelling),
                line[0],
                line[1],
                column[0],
                column[1],
                offset[0],
                offset[1],
            )

            #partial switch type.kind {
            case .CXType_Pointer:
                pointee := clang.getPointeeType(type)
                pointee_spelling := clang.getTypeSpelling(pointee)
                defer clang.disposeString(pointee_spelling)

                fmt.printfln(" -> {}", clang.getCString(pointee_spelling))
            }

            #partial switch kind {
            case .CXCursor_BinaryOperator:
                tokens_arr: [^]clang.CXToken = ---
                num_tokens: u32 = ---

                clang.tokenize(unit, cursor_range, &tokens_arr, &num_tokens)
                defer clang.disposeTokens(unit, tokens_arr, num_tokens)

                if num_tokens > 2 {
                    left_spell := clang.getTokenSpelling(unit, tokens_arr[0])
                    defer clang.disposeString(left_spell)
                    op_spell := clang.getTokenSpelling(unit, tokens_arr[1])
                    defer clang.disposeString(op_spell)
                    right_spell := clang.getTokenSpelling(unit, tokens_arr[2])
                    defer clang.disposeString(right_spell)

                    fmt.printfln(
                        " left={} operator={} right={}",
                        clang.getCString(left_spell),
                        clang.getCString(op_spell),
                        clang.getCString(right_spell),
                    )
                }
            case .CXCursor_IntegerLiteral:
                tokens_arr: [^]clang.CXToken = ---
                num_tokens: u32 = ---

                clang.tokenize(unit, cursor_range, &tokens_arr, &num_tokens)
                defer clang.disposeTokens(unit, tokens_arr, num_tokens)

                if num_tokens > 0 {
                    int_spell := clang.getTokenSpelling(unit, tokens_arr[0])
                    defer clang.disposeString(int_spell)

                    fmt.printfln(" int={}", clang.getCString(int_spell))
                }
            }

            return .CXChildVisit_Recurse
        },
        nil,
    )
}
