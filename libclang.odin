//+build amd64, arm64
package clang

VirtualFileOverlay :: rawptr
ModuleMapDescriptor :: rawptr
CompilationDatabase :: rawptr
CompileCommands :: rawptr
CompileCommand :: rawptr
CompilationDatabase_Error :: enum u32 {NoError = 0, CanNotLoadDatabase = 1, }
DiagnosticSeverity :: enum u32 {Ignored = 0, Note = 1, Warning = 2, Error = 3, Fatal = 4, }
Diagnostic :: rawptr
DiagnosticSet :: rawptr
LoadDiag_Error :: enum u32 {None = 0, Unknown = 1, CannotLoad = 2, InvalidFile = 3, }
DiagnosticDisplayOptions :: enum u32 {DisplaySourceLocation = 1, DisplayColumn = 2, DisplaySourceRanges = 4, DisplayOption = 8, DisplayCategoryId = 16, DisplayCategoryName = 32, }
ErrorCode :: enum u32 {Success = 0, Failure = 1, Crashed = 2, InvalidArguments = 3, ASTReadError = 4, }
File :: rawptr
FileUniqueID :: struct {
    data: [3]u64,
}
SourceLocation :: struct {
    ptr_data: [2]rawptr,
    int_data: u32,
}
SourceRange :: struct {
    ptr_data: [2]rawptr,
    begin_int_data: u32,
    end_int_data: u32,
}
SourceRangeList :: struct {
    count: u32,
    ranges: [^]SourceRange,
}
String :: struct {
    data: rawptr,
    private_flags: u32,
}
StringSet :: struct {
    Strings: [^]String,
    Count: u32,
}
Comment :: struct {
    ASTNode: rawptr,
    TranslationUnit: TranslationUnit,
}
CommentKind :: enum u32 {Null = 0, Text = 1, InlineCommand = 2, HTMLStartTag = 3, HTMLEndTag = 4, Paragraph = 5, BlockCommand = 6, ParamCommand = 7, TParamCommand = 8, VerbatimBlockCommand = 9, VerbatimBlockLine = 10, VerbatimLine = 11, FullComment = 12, }
CommentInlineCommandRenderKind :: enum u32 {Normal = 0, Bold = 1, Monospaced = 2, Emphasized = 3, Anchor = 4, }
CommentParamPassDirection :: enum u32 {In = 0, Out = 1, InOut = 2, }
APISet :: rawptr
Index :: rawptr
TargetInfo :: rawptr
TranslationUnit :: rawptr
ClientData :: rawptr
AvailabilityKind :: enum u32 {Available = 0, Deprecated = 1, NotAvailable = 2, NotAccessible = 3, }
Version :: struct {
    Major: i32,
    Minor: i32,
    Subminor: i32,
}
Cursor_ExceptionSpecificationKind :: enum u32 {None = 0, DynamicNone = 1, Dynamic = 2, MSAny = 3, BasicNoexcept = 4, ComputedNoexcept = 5, Unevaluated = 6, Uninstantiated = 7, Unparsed = 8, NoThrow = 9, }
Choice :: enum u32 {Default = 0, Enabled = 1, Disabled = 2, }
GlobalOptFlags :: enum u32 {None = 0, ThreadBackgroundPriorityForIndexing = 1, ThreadBackgroundPriorityForEditing = 2, ThreadBackgroundPriorityForAll = 3, }
TranslationUnit_Flags :: enum u32 {None = 0, DetailedPreprocessingRecord = 1, Incomplete = 2, PrecompiledPreamble = 4, CacheCompletionResults = 8, ForSerialization = 16, CXXChainedPCH = 32, SkipFunctionBodies = 64, IncludeBriefCommentsInCodeCompletion = 128, CreatePreambleOnFirstParse = 256, KeepGoing = 512, SingleFileParse = 1024, LimitSkipFunctionBodiesToPreamble = 2048, IncludeAttributedTypes = 4096, VisitImplicitAttributes = 8192, IgnoreNonErrorsFromIncludedFiles = 16384, RetainExcludedConditionalBlocks = 32768, }
SaveTranslationUnit_Flags :: enum u32 {None = 0, }
SaveError :: enum u32 {None = 0, Unknown = 1, TranslationErrors = 2, InvalidTU = 3, }
Reparse_Flags :: enum u32 {None = 0, }
TUResourceUsageKind :: enum u32 {AST = 1, Identifiers = 2, Selectors = 3, GlobalCompletionResults = 4, SourceManagerContentCache = 5, AST_SideTables = 6, SourceManager_Membuffer_Malloc = 7, SourceManager_Membuffer_MMap = 8, ExternalASTSource_Membuffer_Malloc = 9, ExternalASTSource_Membuffer_MMap = 10, Preprocessor = 11, PreprocessingRecord = 12, SourceManager_DataStructures = 13, Preprocessor_HeaderSearch = 14, MEMORY_IN_BYTES_BEGIN = 1, MEMORY_IN_BYTES_END = 14, First = 1, Last = 14, }
TUResourceUsage :: struct {
    data: rawptr,
    numEntries: u32,
    entries: [^]TUResourceUsageEntry,
}
CursorKind :: enum u32 {UnexposedDecl = 1, StructDecl = 2, UnionDecl = 3, ClassDecl = 4, EnumDecl = 5, FieldDecl = 6, EnumConstantDecl = 7, FunctionDecl = 8, VarDecl = 9, ParmDecl = 10, ObjCInterfaceDecl = 11, ObjCCategoryDecl = 12, ObjCProtocolDecl = 13, ObjCPropertyDecl = 14, ObjCIvarDecl = 15, ObjCInstanceMethodDecl = 16, ObjCClassMethodDecl = 17, ObjCImplementationDecl = 18, ObjCCategoryImplDecl = 19, TypedefDecl = 20, CXXMethod = 21, Namespace = 22, LinkageSpec = 23, Constructor = 24, Destructor = 25, ConversionFunction = 26, TemplateTypeParameter = 27, NonTypeTemplateParameter = 28, TemplateTemplateParameter = 29, FunctionTemplate = 30, ClassTemplate = 31, ClassTemplatePartialSpecialization = 32, NamespaceAlias = 33, UsingDirective = 34, UsingDeclaration = 35, TypeAliasDecl = 36, ObjCSynthesizeDecl = 37, ObjCDynamicDecl = 38, CXXAccessSpecifier = 39, FirstDecl = 1, LastDecl = 39, FirstRef = 40, ObjCSuperClassRef = 40, ObjCProtocolRef = 41, ObjCClassRef = 42, TypeRef = 43, CXXBaseSpecifier = 44, TemplateRef = 45, NamespaceRef = 46, MemberRef = 47, LabelRef = 48, OverloadedDeclRef = 49, VariableRef = 50, LastRef = 50, FirstInvalid = 70, InvalidFile = 70, NoDeclFound = 71, NotImplemented = 72, InvalidCode = 73, LastInvalid = 73, FirstExpr = 100, UnexposedExpr = 100, DeclRefExpr = 101, MemberRefExpr = 102, CallExpr = 103, ObjCMessageExpr = 104, BlockExpr = 105, IntegerLiteral = 106, FloatingLiteral = 107, ImaginaryLiteral = 108, StringLiteral = 109, CharacterLiteral = 110, ParenExpr = 111, UnaryOperator = 112, ArraySubscriptExpr = 113, BinaryOperator = 114, CompoundAssignOperator = 115, ConditionalOperator = 116, CStyleCastExpr = 117, CompoundLiteralExpr = 118, InitListExpr = 119, AddrLabelExpr = 120, StmtExpr = 121, GenericSelectionExpr = 122, GNUNullExpr = 123, CXXStaticCastExpr = 124, CXXDynamicCastExpr = 125, CXXReinterpretCastExpr = 126, CXXConstCastExpr = 127, CXXFunctionalCastExpr = 128, CXXTypeidExpr = 129, CXXBoolLiteralExpr = 130, CXXNullPtrLiteralExpr = 131, CXXThisExpr = 132, CXXThrowExpr = 133, CXXNewExpr = 134, CXXDeleteExpr = 135, UnaryExpr = 136, ObjCStringLiteral = 137, ObjCEncodeExpr = 138, ObjCSelectorExpr = 139, ObjCProtocolExpr = 140, ObjCBridgedCastExpr = 141, PackExpansionExpr = 142, SizeOfPackExpr = 143, LambdaExpr = 144, ObjCBoolLiteralExpr = 145, ObjCSelfExpr = 146, OMPArraySectionExpr = 147, ObjCAvailabilityCheckExpr = 148, FixedPointLiteral = 149, OMPArrayShapingExpr = 150, OMPIteratorExpr = 151, CXXAddrspaceCastExpr = 152, ConceptSpecializationExpr = 153, RequiresExpr = 154, CXXParenListInitExpr = 155, LastExpr = 155, FirstStmt = 200, UnexposedStmt = 200, LabelStmt = 201, CompoundStmt = 202, CaseStmt = 203, DefaultStmt = 204, IfStmt = 205, SwitchStmt = 206, WhileStmt = 207, DoStmt = 208, ForStmt = 209, GotoStmt = 210, IndirectGotoStmt = 211, ContinueStmt = 212, BreakStmt = 213, ReturnStmt = 214, GCCAsmStmt = 215, AsmStmt = 215, ObjCAtTryStmt = 216, ObjCAtCatchStmt = 217, ObjCAtFinallyStmt = 218, ObjCAtThrowStmt = 219, ObjCAtSynchronizedStmt = 220, ObjCAutoreleasePoolStmt = 221, ObjCForCollectionStmt = 222, CXXCatchStmt = 223, CXXTryStmt = 224, CXXForRangeStmt = 225, SEHTryStmt = 226, SEHExceptStmt = 227, SEHFinallyStmt = 228, MSAsmStmt = 229, NullStmt = 230, DeclStmt = 231, OMPParallelDirective = 232, OMPSimdDirective = 233, OMPForDirective = 234, OMPSectionsDirective = 235, OMPSectionDirective = 236, OMPSingleDirective = 237, OMPParallelForDirective = 238, OMPParallelSectionsDirective = 239, OMPTaskDirective = 240, OMPMasterDirective = 241, OMPCriticalDirective = 242, OMPTaskyieldDirective = 243, OMPBarrierDirective = 244, OMPTaskwaitDirective = 245, OMPFlushDirective = 246, SEHLeaveStmt = 247, OMPOrderedDirective = 248, OMPAtomicDirective = 249, OMPForSimdDirective = 250, OMPParallelForSimdDirective = 251, OMPTargetDirective = 252, OMPTeamsDirective = 253, OMPTaskgroupDirective = 254, OMPCancellationPointDirective = 255, OMPCancelDirective = 256, OMPTargetDataDirective = 257, OMPTaskLoopDirective = 258, OMPTaskLoopSimdDirective = 259, OMPDistributeDirective = 260, OMPTargetEnterDataDirective = 261, OMPTargetExitDataDirective = 262, OMPTargetParallelDirective = 263, OMPTargetParallelForDirective = 264, OMPTargetUpdateDirective = 265, OMPDistributeParallelForDirective = 266, OMPDistributeParallelForSimdDirective = 267, OMPDistributeSimdDirective = 268, OMPTargetParallelForSimdDirective = 269, OMPTargetSimdDirective = 270, OMPTeamsDistributeDirective = 271, OMPTeamsDistributeSimdDirective = 272, OMPTeamsDistributeParallelForSimdDirective = 273, OMPTeamsDistributeParallelForDirective = 274, OMPTargetTeamsDirective = 275, OMPTargetTeamsDistributeDirective = 276, OMPTargetTeamsDistributeParallelForDirective = 277, OMPTargetTeamsDistributeParallelForSimdDirective = 278, OMPTargetTeamsDistributeSimdDirective = 279, BuiltinBitCastExpr = 280, OMPMasterTaskLoopDirective = 281, OMPParallelMasterTaskLoopDirective = 282, OMPMasterTaskLoopSimdDirective = 283, OMPParallelMasterTaskLoopSimdDirective = 284, OMPParallelMasterDirective = 285, OMPDepobjDirective = 286, OMPScanDirective = 287, OMPTileDirective = 288, OMPCanonicalLoop = 289, OMPInteropDirective = 290, OMPDispatchDirective = 291, OMPMaskedDirective = 292, OMPUnrollDirective = 293, OMPMetaDirective = 294, OMPGenericLoopDirective = 295, OMPTeamsGenericLoopDirective = 296, OMPTargetTeamsGenericLoopDirective = 297, OMPParallelGenericLoopDirective = 298, OMPTargetParallelGenericLoopDirective = 299, OMPParallelMaskedDirective = 300, OMPMaskedTaskLoopDirective = 301, OMPMaskedTaskLoopSimdDirective = 302, OMPParallelMaskedTaskLoopDirective = 303, OMPParallelMaskedTaskLoopSimdDirective = 304, OMPErrorDirective = 305, OMPScopeDirective = 306, LastStmt = 306, TranslationUnit = 350, FirstAttr = 400, UnexposedAttr = 400, IBActionAttr = 401, IBOutletAttr = 402, IBOutletCollectionAttr = 403, CXXFinalAttr = 404, CXXOverrideAttr = 405, AnnotateAttr = 406, AsmLabelAttr = 407, PackedAttr = 408, PureAttr = 409, ConstAttr = 410, NoDuplicateAttr = 411, CUDAConstantAttr = 412, CUDADeviceAttr = 413, CUDAGlobalAttr = 414, CUDAHostAttr = 415, CUDASharedAttr = 416, VisibilityAttr = 417, DLLExport = 418, DLLImport = 419, NSReturnsRetained = 420, NSReturnsNotRetained = 421, NSReturnsAutoreleased = 422, NSConsumesSelf = 423, NSConsumed = 424, ObjCException = 425, ObjCNSObject = 426, ObjCIndependentClass = 427, ObjCPreciseLifetime = 428, ObjCReturnsInnerPointer = 429, ObjCRequiresSuper = 430, ObjCRootClass = 431, ObjCSubclassingRestricted = 432, ObjCExplicitProtocolImpl = 433, ObjCDesignatedInitializer = 434, ObjCRuntimeVisible = 435, ObjCBoxable = 436, FlagEnum = 437, ConvergentAttr = 438, WarnUnusedAttr = 439, WarnUnusedResultAttr = 440, AlignedAttr = 441, LastAttr = 441, PreprocessingDirective = 500, MacroDefinition = 501, MacroExpansion = 502, MacroInstantiation = 502, InclusionDirective = 503, FirstPreprocessing = 500, LastPreprocessing = 503, ModuleImportDecl = 600, TypeAliasTemplateDecl = 601, StaticAssert = 602, FriendDecl = 603, ConceptDecl = 604, FirstExtraDecl = 600, LastExtraDecl = 604, OverloadCandidate = 700, }
Cursor :: struct {
    kind: CursorKind,
    xdata: i32,
    data: [3]rawptr,
}
LinkageKind :: enum u32 {Invalid = 0, NoLinkage = 1, Internal = 2, UniqueExternal = 3, External = 4, }
VisibilityKind :: enum u32 {Invalid = 0, Hidden = 1, Protected = 2, Default = 3, }
PlatformAvailability :: struct {
    Platform: String,
    Introduced: Version,
    Deprecated: Version,
    Obsoleted: Version,
    Unavailable: i32,
    Message: String,
}
LanguageKind :: enum u32 {Invalid = 0, C = 1, ObjC = 2, CPlusPlus = 3, }
TLSKind :: enum u32 {None = 0, Dynamic = 1, Static = 2, }
CursorSet :: rawptr
TypeKind :: enum u32 {Invalid = 0, Unexposed = 1, Void = 2, Bool = 3, Char_U = 4, UChar = 5, Char16 = 6, Char32 = 7, UShort = 8, UInt = 9, ULong = 10, ULongLong = 11, UInt128 = 12, Char_S = 13, SChar = 14, WChar = 15, Short = 16, Int = 17, Long = 18, LongLong = 19, Int128 = 20, Float = 21, Double = 22, LongDouble = 23, NullPtr = 24, Overload = 25, Dependent = 26, ObjCId = 27, ObjCClass = 28, ObjCSel = 29, Float128 = 30, Half = 31, Float16 = 32, ShortAccum = 33, Accum = 34, LongAccum = 35, UShortAccum = 36, UAccum = 37, ULongAccum = 38, BFloat16 = 39, Ibm128 = 40, FirstBuiltin = 2, LastBuiltin = 40, Complex = 100, Pointer = 101, BlockPointer = 102, LValueReference = 103, RValueReference = 104, Record = 105, Enum = 106, Typedef = 107, ObjCInterface = 108, ObjCObjectPointer = 109, FunctionNoProto = 110, FunctionProto = 111, ConstantArray = 112, Vector = 113, IncompleteArray = 114, VariableArray = 115, DependentSizedArray = 116, MemberPointer = 117, Auto = 118, Elaborated = 119, Pipe = 120, OCLImage1dRO = 121, OCLImage1dArrayRO = 122, OCLImage1dBufferRO = 123, OCLImage2dRO = 124, OCLImage2dArrayRO = 125, OCLImage2dDepthRO = 126, OCLImage2dArrayDepthRO = 127, OCLImage2dMSAARO = 128, OCLImage2dArrayMSAARO = 129, OCLImage2dMSAADepthRO = 130, OCLImage2dArrayMSAADepthRO = 131, OCLImage3dRO = 132, OCLImage1dWO = 133, OCLImage1dArrayWO = 134, OCLImage1dBufferWO = 135, OCLImage2dWO = 136, OCLImage2dArrayWO = 137, OCLImage2dDepthWO = 138, OCLImage2dArrayDepthWO = 139, OCLImage2dMSAAWO = 140, OCLImage2dArrayMSAAWO = 141, OCLImage2dMSAADepthWO = 142, OCLImage2dArrayMSAADepthWO = 143, OCLImage3dWO = 144, OCLImage1dRW = 145, OCLImage1dArrayRW = 146, OCLImage1dBufferRW = 147, OCLImage2dRW = 148, OCLImage2dArrayRW = 149, OCLImage2dDepthRW = 150, OCLImage2dArrayDepthRW = 151, OCLImage2dMSAARW = 152, OCLImage2dArrayMSAARW = 153, OCLImage2dMSAADepthRW = 154, OCLImage2dArrayMSAADepthRW = 155, OCLImage3dRW = 156, OCLSampler = 157, OCLEvent = 158, OCLQueue = 159, OCLReserveID = 160, ObjCObject = 161, ObjCTypeParam = 162, Attributed = 163, OCLIntelSubgroupAVCMcePayload = 164, OCLIntelSubgroupAVCImePayload = 165, OCLIntelSubgroupAVCRefPayload = 166, OCLIntelSubgroupAVCSicPayload = 167, OCLIntelSubgroupAVCMceResult = 168, OCLIntelSubgroupAVCImeResult = 169, OCLIntelSubgroupAVCRefResult = 170, OCLIntelSubgroupAVCSicResult = 171, OCLIntelSubgroupAVCImeResultSingleReferenceStreamout = 172, OCLIntelSubgroupAVCImeResultDualReferenceStreamout = 173, OCLIntelSubgroupAVCImeSingleReferenceStreamin = 174, OCLIntelSubgroupAVCImeDualReferenceStreamin = 175, OCLIntelSubgroupAVCImeResultSingleRefStreamout = 172, OCLIntelSubgroupAVCImeResultDualRefStreamout = 173, OCLIntelSubgroupAVCImeSingleRefStreamin = 174, OCLIntelSubgroupAVCImeDualRefStreamin = 175, ExtVector = 176, Atomic = 177, BTFTagAttributed = 178, }
CallingConv :: enum u32 {Default = 0, C = 1, X86StdCall = 2, X86FastCall = 3, X86ThisCall = 4, X86Pascal = 5, AAPCS = 6, AAPCS_VFP = 7, X86RegCall = 8, IntelOclBicc = 9, Win64 = 10, X86_64Win64 = 10, X86_64SysV = 11, X86VectorCall = 12, Swift = 13, PreserveMost = 14, PreserveAll = 15, AArch64VectorCall = 16, SwiftAsync = 17, AArch64SVEPCS = 18, M68kRTD = 19, Invalid = 100, Unexposed = 200, }
Type :: struct {
    kind: TypeKind,
    data: [2]rawptr,
}
TemplateArgumentKind :: enum u32 {Null = 0, Type = 1, Declaration = 2, NullPtr = 3, Integral = 4, Template = 5, TemplateExpansion = 6, Expression = 7, Pack = 8, Invalid = 9, }
TypeNullabilityKind :: enum u32 {NonNull = 0, Nullable = 1, Unspecified = 2, Invalid = 3, NullableResult = 4, }
TypeLayoutError :: enum i32 {Invalid = -1, Incomplete = -2, Dependent = -3, NotConstantSize = -4, InvalidFieldName = -5, Undeduced = -6, }
RefQualifierKind :: enum u32 {None = 0, LValue = 1, RValue = 2, }
CX_CXXAccessSpecifier :: enum u32 {InvalidAccessSpecifier = 0, Public = 1, Protected = 2, Private = 3, }
CX_StorageClass :: enum u32 {Invalid = 0, None = 1, Extern = 2, Static = 3, PrivateExtern = 4, OpenCLWorkGroupLocal = 5, Auto = 6, Register = 7, }
ChildVisitResult :: enum u32 {Break = 0, Continue = 1, Recurse = 2, }
CursorVisitor :: #type proc "c" (cursor: Cursor, parent: Cursor, client_data: ClientData) -> ChildVisitResult
CursorVisitorBlock :: rawptr
PrintingPolicy :: rawptr
PrintingPolicyProperty :: enum u32 {Indentation = 0, SuppressSpecifiers = 1, SuppressTagKeyword = 2, IncludeTagDefinition = 3, SuppressScope = 4, SuppressUnwrittenScope = 5, SuppressInitializers = 6, ConstantArraySizeAsWritten = 7, AnonymousTagLocations = 8, SuppressStrongLifetime = 9, SuppressLifetimeQualifiers = 10, SuppressTemplateArgsInCXXConstructors = 11, Bool = 12, Restrict = 13, Alignof = 14, UnderscoreAlignof = 15, UseVoidForZeroParams = 16, TerseOutput = 17, PolishForDeclaration = 18, Half = 19, MSWChar = 20, IncludeNewlines = 21, MSVCFormatting = 22, ConstantsAsWritten = 23, SuppressImplicitBase = 24, FullyQualifiedName = 25, LastProperty = 25, }
ObjCPropertyAttrKind :: enum u32 {noattr = 0, readonly = 1, getter = 2, assign = 4, readwrite = 8, retain = 16, copy = 32, nonatomic = 64, setter = 128, atomic = 256, weak = 512, strong = 1024, unsafe_unretained = 2048, class = 4096, }
ObjCDeclQualifierKind :: enum u32 {None = 0, In = 1, Inout = 2, Out = 4, Bycopy = 8, Byref = 16, Oneway = 32, }
Module :: rawptr
NameRefFlags :: enum u32 {WantQualifier = 1, WantTemplateArgs = 2, WantSinglePiece = 4, }
TokenKind :: enum u32 {Punctuation = 0, Keyword = 1, Identifier = 2, Literal = 3, Comment = 4, }
Token :: struct {
    int_data: [4]u32,
    ptr_data: rawptr,
}
fn_func_ptr_anon_0 :: #type proc "c" (param0: rawptr)
CompletionString :: rawptr
CompletionResult :: struct {
    CursorKind: CursorKind,
    CompletionString: CompletionString,
}
CompletionChunkKind :: enum u32 {Optional = 0, TypedText = 1, Text = 2, Placeholder = 3, Informative = 4, CurrentParameter = 5, LeftParen = 6, RightParen = 7, LeftBracket = 8, RightBracket = 9, LeftBrace = 10, RightBrace = 11, LeftAngle = 12, RightAngle = 13, Comma = 14, ResultType = 15, Colon = 16, SemiColon = 17, Equal = 18, HorizontalSpace = 19, VerticalSpace = 20, }
CodeCompleteResults :: struct {
    Results: [^]CompletionResult,
    NumResults: u32,
}
CodeComplete_Flags :: enum u32 {IncludeMacros = 1, IncludeCodePatterns = 2, IncludeBriefComments = 4, SkipPreamble = 8, IncludeCompletionsWithFixIts = 16, }
CompletionContext :: enum u32 {Unexposed = 0, AnyType = 1, AnyValue = 2, ObjCObjectValue = 4, ObjCSelectorValue = 8, CXXClassTypeValue = 16, DotMemberAccess = 32, ArrowMemberAccess = 64, ObjCPropertyAccess = 128, EnumTag = 256, UnionTag = 512, StructTag = 1024, ClassTag = 2048, Namespace = 4096, NestedNameSpecifier = 8192, ObjCInterface = 16384, ObjCProtocol = 32768, ObjCCategory = 65536, ObjCInstanceMessage = 131072, ObjCClassMessage = 262144, ObjCSelectorName = 524288, MacroName = 1048576, NaturalLanguage = 2097152, IncludedFile = 4194304, Unknown = 8388607, }
InclusionVisitor :: #type proc "c" (included_file: File, inclusion_stack: ^SourceLocation, include_len: u32, client_data: ClientData)
EvalResultKind :: enum u32 {Int = 1, Float = 2, ObjCStrLiteral = 3, StrLiteral = 4, CFStr = 5, Other = 6, UnExposed = 0, }
EvalResult :: rawptr
Remapping :: rawptr
VisitorResult :: enum u32 {Break = 0, Continue = 1, }
visit_func_ptr_anon_1 :: #type proc "c" (context_: rawptr, param1: Cursor, param2: SourceRange) -> VisitorResult
CursorAndRangeVisitor :: struct {
    context_: rawptr,
    visit: visit_func_ptr_anon_1,
}
Result :: enum u32 {Success = 0, Invalid = 1, VisitBreak = 2, }
CursorAndRangeVisitorBlock :: rawptr
IdxClientFile :: rawptr
IdxClientEntity :: rawptr
IdxClientContainer :: rawptr
IdxClientASTFile :: rawptr
IdxLoc :: struct {
    ptr_data: [2]rawptr,
    int_data: u32,
}
IdxIncludedFileInfo :: struct {
    hashLoc: IdxLoc,
    filename: cstring,
    file: File,
    isImport: i32,
    isAngled: i32,
    isModuleImport: i32,
}
IdxImportedASTFileInfo :: struct {
    file: File,
    module: Module,
    loc: IdxLoc,
    isImplicit: i32,
}
IdxEntityKind :: enum u32 {Unexposed = 0, Typedef = 1, Function = 2, Variable = 3, Field = 4, EnumConstant = 5, ObjCClass = 6, ObjCProtocol = 7, ObjCCategory = 8, ObjCInstanceMethod = 9, ObjCClassMethod = 10, ObjCProperty = 11, ObjCIvar = 12, Enum = 13, Struct = 14, Union = 15, CXXClass = 16, CXXNamespace = 17, CXXNamespaceAlias = 18, CXXStaticVariable = 19, CXXStaticMethod = 20, CXXInstanceMethod = 21, CXXConstructor = 22, CXXDestructor = 23, CXXConversionFunction = 24, CXXTypeAlias = 25, CXXInterface = 26, CXXConcept = 27, }
IdxEntityLanguage :: enum u32 {None = 0, C = 1, ObjC = 2, CXX = 3, Swift = 4, }
IdxEntityCXXTemplateKind :: enum u32 {NonTemplate = 0, Template = 1, TemplatePartialSpecialization = 2, TemplateSpecialization = 3, }
IdxAttrKind :: enum u32 {Unexposed = 0, IBAction = 1, IBOutlet = 2, IBOutletCollection = 3, }
IdxAttrInfo :: struct {
    kind: IdxAttrKind,
    cursor: Cursor,
    loc: IdxLoc,
}
IdxEntityInfo :: struct {
    kind: IdxEntityKind,
    templateKind: IdxEntityCXXTemplateKind,
    lang: IdxEntityLanguage,
    name: cstring,
    USR: cstring,
    cursor: Cursor,
    attributes: ^[^]IdxAttrInfo,
    numAttributes: u32,
}
IdxContainerInfo :: struct {
    cursor: Cursor,
}
IdxIBOutletCollectionAttrInfo :: struct {
    attrInfo: ^IdxAttrInfo,
    objcClass: [^]IdxEntityInfo,
    classCursor: Cursor,
    classLoc: IdxLoc,
}
IdxDeclInfoFlags :: enum u32 {Skipped = 1, }
IdxDeclInfo :: struct {
    entityInfo: ^IdxEntityInfo,
    cursor: Cursor,
    loc: IdxLoc,
    semanticContainer: ^IdxContainerInfo,
    lexicalContainer: ^IdxContainerInfo,
    isRedeclaration: i32,
    isDefinition: i32,
    isContainer: i32,
    declAsContainer: ^IdxContainerInfo,
    isImplicit: i32,
    attributes: ^[^]IdxAttrInfo,
    numAttributes: u32,
    flags: u32,
}
IdxObjCContainerKind :: enum u32 {ForwardRef = 0, Interface = 1, Implementation = 2, }
IdxObjCContainerDeclInfo :: struct {
    declInfo: ^IdxDeclInfo,
    kind: IdxObjCContainerKind,
}
IdxBaseClassInfo :: struct {
    base: ^IdxEntityInfo,
    cursor: Cursor,
    loc: IdxLoc,
}
IdxObjCProtocolRefInfo :: struct {
    protocol: ^IdxEntityInfo,
    cursor: Cursor,
    loc: IdxLoc,
}
IdxObjCProtocolRefListInfo :: struct {
    protocols: ^[^]IdxObjCProtocolRefInfo,
    numProtocols: u32,
}
IdxObjCInterfaceDeclInfo :: struct {
    containerInfo: ^IdxObjCContainerDeclInfo,
    superInfo: ^IdxBaseClassInfo,
    protocols: [^]IdxObjCProtocolRefListInfo,
}
IdxObjCCategoryDeclInfo :: struct {
    containerInfo: ^IdxObjCContainerDeclInfo,
    objcClass: [^]IdxEntityInfo,
    classCursor: Cursor,
    classLoc: IdxLoc,
    protocols: [^]IdxObjCProtocolRefListInfo,
}
IdxObjCPropertyDeclInfo :: struct {
    declInfo: ^IdxDeclInfo,
    getter: ^IdxEntityInfo,
    setter: ^IdxEntityInfo,
}
IdxCXXClassDeclInfo :: struct {
    declInfo: ^IdxDeclInfo,
    bases: ^[^]IdxBaseClassInfo,
    numBases: u32,
}
IdxEntityRefKind :: enum u32 {Direct = 1, Implicit = 2, }
SymbolRole :: enum u32 {None = 0, Declaration = 1, Definition = 2, Reference = 4, Read = 8, Write = 16, Call = 32, Dynamic = 64, AddressOf = 128, Implicit = 256, }
IdxEntityRefInfo :: struct {
    kind: IdxEntityRefKind,
    cursor: Cursor,
    loc: IdxLoc,
    referencedEntity: ^IdxEntityInfo,
    parentEntity: ^IdxEntityInfo,
    container: ^IdxContainerInfo,
    role: SymbolRole,
}
abortQuery_func_ptr_anon_2 :: #type proc "c" (client_data: ClientData, reserved: rawptr) -> i32
diagnostic_func_ptr_anon_3 :: #type proc "c" (client_data: ClientData, param1: DiagnosticSet, reserved: rawptr)
enteredMainFile_func_ptr_anon_4 :: #type proc "c" (client_data: ClientData, mainFile: File, reserved: rawptr) -> IdxClientFile
ppIncludedFile_func_ptr_anon_5 :: #type proc "c" (client_data: ClientData, param1: ^IdxIncludedFileInfo) -> IdxClientFile
importedASTFile_func_ptr_anon_6 :: #type proc "c" (client_data: ClientData, param1: ^IdxImportedASTFileInfo) -> IdxClientASTFile
startedTranslationUnit_func_ptr_anon_7 :: #type proc "c" (client_data: ClientData, reserved: rawptr) -> IdxClientContainer
indexDeclaration_func_ptr_anon_8 :: #type proc "c" (client_data: ClientData, param1: ^IdxDeclInfo)
indexEntityReference_func_ptr_anon_9 :: #type proc "c" (client_data: ClientData, param1: ^IdxEntityRefInfo)
IndexerCallbacks :: struct {
    abortQuery: abortQuery_func_ptr_anon_2,
    diagnostic: diagnostic_func_ptr_anon_3,
    enteredMainFile: enteredMainFile_func_ptr_anon_4,
    ppIncludedFile: ppIncludedFile_func_ptr_anon_5,
    importedASTFile: importedASTFile_func_ptr_anon_6,
    startedTranslationUnit: startedTranslationUnit_func_ptr_anon_7,
    indexDeclaration: indexDeclaration_func_ptr_anon_8,
    indexEntityReference: indexEntityReference_func_ptr_anon_9,
}
IndexAction :: rawptr
IndexOptFlags :: enum u32 {None = 0, SuppressRedundantRefs = 1, IndexFunctionLocalSymbols = 2, IndexImplicitTemplateInstantiations = 4, SuppressWarnings = 8, SkipParsedBodiesInSession = 16, }
FieldVisitor :: #type proc "c" (C: Cursor, client_data: ClientData) -> VisitorResult
BinaryOperatorKind :: enum u32 {Invalid = 0, PtrMemD = 1, PtrMemI = 2, Mul = 3, Div = 4, Rem = 5, Add = 6, Sub = 7, Shl = 8, Shr = 9, Cmp = 10, LT = 11, GT = 12, LE = 13, GE = 14, EQ = 15, NE = 16, And = 17, Xor = 18, Or = 19, LAnd = 20, LOr = 21, Assign = 22, MulAssign = 23, DivAssign = 24, RemAssign = 25, AddAssign = 26, SubAssign = 27, ShlAssign = 28, ShrAssign = 29, AndAssign = 30, XorAssign = 31, OrAssign = 32, Comma = 33, }
UnaryOperatorKind :: enum u32 {Invalid = 0, PostInc = 1, PostDec = 2, PreInc = 3, PreDec = 4, AddrOf = 5, Deref = 6, Plus = 7, Minus = 8, Not = 9, LNot = 10, Real = 11, Imag = 12, Extension = 13, Coawait = 14, }
Rewriter :: rawptr

when #config(CLANG_STATIC, false) {
    foreign import clang_runic "system:libclang.a"
} else {
    foreign import clang_runic "system:clang"
}

@(default_calling_convention = "c")
foreign clang_runic {
    @(link_name = "clang_getBuildSessionTimestamp")
    getBuildSessionTimestamp :: proc() -> u64 ---

    @(link_name = "clang_VirtualFileOverlay_create")
    VirtualFileOverlay_create :: proc(options: u32) -> VirtualFileOverlay ---

    @(link_name = "clang_VirtualFileOverlay_addFileMapping")
    VirtualFileOverlay_addFileMapping :: proc(param0: VirtualFileOverlay, virtualPath: cstring, realPath: cstring) -> ErrorCode ---

    @(link_name = "clang_VirtualFileOverlay_setCaseSensitivity")
    VirtualFileOverlay_setCaseSensitivity :: proc(param0: VirtualFileOverlay, caseSensitive: i32) -> ErrorCode ---

    @(link_name = "clang_VirtualFileOverlay_writeToBuffer")
    VirtualFileOverlay_writeToBuffer :: proc(param0: VirtualFileOverlay, options: u32, out_buffer_ptr: ^cstring, out_buffer_size: ^u32) -> ErrorCode ---

    @(link_name = "clang_free")
    free :: proc(buffer: rawptr) ---

    @(link_name = "clang_VirtualFileOverlay_dispose")
    VirtualFileOverlay_dispose :: proc(param0: VirtualFileOverlay) ---

    @(link_name = "clang_ModuleMapDescriptor_create")
    ModuleMapDescriptor_create :: proc(options: u32) -> ModuleMapDescriptor ---

    @(link_name = "clang_ModuleMapDescriptor_setFrameworkModuleName")
    ModuleMapDescriptor_setFrameworkModuleName :: proc(param0: ModuleMapDescriptor, name: cstring) -> ErrorCode ---

    @(link_name = "clang_ModuleMapDescriptor_setUmbrellaHeader")
    ModuleMapDescriptor_setUmbrellaHeader :: proc(param0: ModuleMapDescriptor, name: cstring) -> ErrorCode ---

    @(link_name = "clang_ModuleMapDescriptor_writeToBuffer")
    ModuleMapDescriptor_writeToBuffer :: proc(param0: ModuleMapDescriptor, options: u32, out_buffer_ptr: ^cstring, out_buffer_size: ^u32) -> ErrorCode ---

    @(link_name = "clang_ModuleMapDescriptor_dispose")
    ModuleMapDescriptor_dispose :: proc(param0: ModuleMapDescriptor) ---

    @(link_name = "clang_CompilationDatabase_fromDirectory")
    CompilationDatabase_fromDirectory :: proc(BuildDir: cstring, ErrorCode: ^CompilationDatabase_Error) -> CompilationDatabase ---

    @(link_name = "clang_CompilationDatabase_dispose")
    CompilationDatabase_dispose :: proc(param0: CompilationDatabase) ---

    @(link_name = "clang_CompilationDatabase_getCompileCommands")
    CompilationDatabase_getCompileCommands :: proc(param0: CompilationDatabase, CompleteFileName: cstring) -> CompileCommands ---

    @(link_name = "clang_CompilationDatabase_getAllCompileCommands")
    CompilationDatabase_getAllCompileCommands :: proc(param0: CompilationDatabase) -> CompileCommands ---

    @(link_name = "clang_CompileCommands_dispose")
    CompileCommands_dispose :: proc(param0: CompileCommands) ---

    @(link_name = "clang_CompileCommands_getSize")
    CompileCommands_getSize :: proc(param0: CompileCommands) -> u32 ---

    @(link_name = "clang_CompileCommands_getCommand")
    CompileCommands_getCommand :: proc(param0: CompileCommands, I: u32) -> CompileCommand ---

    @(link_name = "clang_CompileCommand_getDirectory")
    CompileCommand_getDirectory :: proc(param0: CompileCommand) -> String ---

    @(link_name = "clang_CompileCommand_getFilename")
    CompileCommand_getFilename :: proc(param0: CompileCommand) -> String ---

    @(link_name = "clang_CompileCommand_getNumArgs")
    CompileCommand_getNumArgs :: proc(param0: CompileCommand) -> u32 ---

    @(link_name = "clang_CompileCommand_getArg")
    CompileCommand_getArg :: proc(param0: CompileCommand, I: u32) -> String ---

    @(link_name = "clang_CompileCommand_getNumMappedSources")
    CompileCommand_getNumMappedSources :: proc(param0: CompileCommand) -> u32 ---

    @(link_name = "clang_CompileCommand_getMappedSourcePath")
    CompileCommand_getMappedSourcePath :: proc(param0: CompileCommand, I: u32) -> String ---

    @(link_name = "clang_CompileCommand_getMappedSourceContent")
    CompileCommand_getMappedSourceContent :: proc(param0: CompileCommand, I: u32) -> String ---

    @(link_name = "clang_getNumDiagnosticsInSet")
    getNumDiagnosticsInSet :: proc(Diags: DiagnosticSet) -> u32 ---

    @(link_name = "clang_getDiagnosticInSet")
    getDiagnosticInSet :: proc(Diags: DiagnosticSet, Index: u32) -> Diagnostic ---

    @(link_name = "clang_loadDiagnostics")
    loadDiagnostics :: proc(file: cstring, error: ^LoadDiag_Error, errorString: ^String) -> DiagnosticSet ---

    @(link_name = "clang_disposeDiagnosticSet")
    disposeDiagnosticSet :: proc(Diags: DiagnosticSet) ---

    @(link_name = "clang_getChildDiagnostics")
    getChildDiagnostics :: proc(D: Diagnostic) -> DiagnosticSet ---

    @(link_name = "clang_disposeDiagnostic")
    disposeDiagnostic :: proc(Diagnostic: Diagnostic) ---

    @(link_name = "clang_formatDiagnostic")
    formatDiagnostic :: proc(Diagnostic: Diagnostic, Options: u32) -> String ---

    @(link_name = "clang_defaultDiagnosticDisplayOptions")
    defaultDiagnosticDisplayOptions :: proc() -> u32 ---

    @(link_name = "clang_getDiagnosticSeverity")
    getDiagnosticSeverity :: proc(param0: Diagnostic) -> DiagnosticSeverity ---

    @(link_name = "clang_getDiagnosticLocation")
    getDiagnosticLocation :: proc(param0: Diagnostic) -> SourceLocation ---

    @(link_name = "clang_getDiagnosticSpelling")
    getDiagnosticSpelling :: proc(param0: Diagnostic) -> String ---

    @(link_name = "clang_getDiagnosticOption")
    getDiagnosticOption :: proc(Diag: Diagnostic, Disable: ^String) -> String ---

    @(link_name = "clang_getDiagnosticCategory")
    getDiagnosticCategory :: proc(param0: Diagnostic) -> u32 ---

    @(link_name = "clang_getDiagnosticCategoryName")
    getDiagnosticCategoryName :: proc(Category: u32) -> String ---

    @(link_name = "clang_getDiagnosticCategoryText")
    getDiagnosticCategoryText :: proc(param0: Diagnostic) -> String ---

    @(link_name = "clang_getDiagnosticNumRanges")
    getDiagnosticNumRanges :: proc(param0: Diagnostic) -> u32 ---

    @(link_name = "clang_getDiagnosticRange")
    getDiagnosticRange :: proc(Diagnostic: Diagnostic, Range: u32) -> SourceRange ---

    @(link_name = "clang_getDiagnosticNumFixIts")
    getDiagnosticNumFixIts :: proc(Diagnostic: Diagnostic) -> u32 ---

    @(link_name = "clang_getDiagnosticFixIt")
    getDiagnosticFixIt :: proc(Diagnostic: Diagnostic, FixIt: u32, ReplacementRange: ^SourceRange) -> String ---

    @(link_name = "clang_getFileName")
    getFileName :: proc(SFile: File) -> String ---

    @(link_name = "clang_getFileTime")
    getFileTime :: proc(SFile: File) -> time_t ---

    @(link_name = "clang_getFileUniqueID")
    getFileUniqueID :: proc(file: File, outID: ^FileUniqueID) -> i32 ---

    @(link_name = "clang_File_isEqual")
    File_isEqual :: proc(file1: File, file2: File) -> i32 ---

    @(link_name = "clang_File_tryGetRealPathName")
    File_tryGetRealPathName :: proc(file: File) -> String ---

    @(link_name = "clang_getNullLocation")
    getNullLocation :: proc() -> SourceLocation ---

    @(link_name = "clang_equalLocations")
    equalLocations :: proc(loc1: SourceLocation, loc2: SourceLocation) -> u32 ---

    @(link_name = "clang_Location_isInSystemHeader")
    Location_isInSystemHeader :: proc(location: SourceLocation) -> i32 ---

    @(link_name = "clang_Location_isFromMainFile")
    Location_isFromMainFile :: proc(location: SourceLocation) -> i32 ---

    @(link_name = "clang_getNullRange")
    getNullRange :: proc() -> SourceRange ---

    @(link_name = "clang_getRange")
    getRange :: proc(begin: SourceLocation, end: SourceLocation) -> SourceRange ---

    @(link_name = "clang_equalRanges")
    equalRanges :: proc(range1: SourceRange, range2: SourceRange) -> u32 ---

    @(link_name = "clang_Range_isNull")
    Range_isNull :: proc(range: SourceRange) -> i32 ---

    @(link_name = "clang_getExpansionLocation")
    getExpansionLocation :: proc(location: SourceLocation, file: ^File, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getPresumedLocation")
    getPresumedLocation :: proc(location: SourceLocation, filename: ^String, line: ^u32, column: ^u32) ---

    @(link_name = "clang_getInstantiationLocation")
    getInstantiationLocation :: proc(location: SourceLocation, file: ^File, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getSpellingLocation")
    getSpellingLocation :: proc(location: SourceLocation, file: ^File, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getFileLocation")
    getFileLocation :: proc(location: SourceLocation, file: ^File, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getRangeStart")
    getRangeStart :: proc(range: SourceRange) -> SourceLocation ---

    @(link_name = "clang_getRangeEnd")
    getRangeEnd :: proc(range: SourceRange) -> SourceLocation ---

    @(link_name = "clang_disposeSourceRangeList")
    disposeSourceRangeList :: proc(ranges: [^]SourceRangeList) ---

    @(link_name = "clang_getCString")
    getCString :: proc(string_: String) -> cstring ---

    @(link_name = "clang_disposeString")
    disposeString :: proc(string_: String) ---

    @(link_name = "clang_disposeStringSet")
    disposeStringSet :: proc(set: ^StringSet) ---

    @(link_name = "clang_Cursor_getParsedComment")
    Cursor_getParsedComment :: proc(C: Cursor) -> Comment ---

    @(link_name = "clang_Comment_getKind")
    Comment_getKind :: proc(comment: Comment) -> CommentKind ---

    @(link_name = "clang_Comment_getNumChildren")
    Comment_getNumChildren :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_Comment_getChild")
    Comment_getChild :: proc(comment: Comment, ChildIdx: u32) -> Comment ---

    @(link_name = "clang_Comment_isWhitespace")
    Comment_isWhitespace :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_InlineContentComment_hasTrailingNewline")
    InlineContentComment_hasTrailingNewline :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_TextComment_getText")
    TextComment_getText :: proc(comment: Comment) -> String ---

    @(link_name = "clang_InlineCommandComment_getCommandName")
    InlineCommandComment_getCommandName :: proc(comment: Comment) -> String ---

    @(link_name = "clang_InlineCommandComment_getRenderKind")
    InlineCommandComment_getRenderKind :: proc(comment: Comment) -> CommentInlineCommandRenderKind ---

    @(link_name = "clang_InlineCommandComment_getNumArgs")
    InlineCommandComment_getNumArgs :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_InlineCommandComment_getArgText")
    InlineCommandComment_getArgText :: proc(comment: Comment, ArgIdx: u32) -> String ---

    @(link_name = "clang_HTMLTagComment_getTagName")
    HTMLTagComment_getTagName :: proc(comment: Comment) -> String ---

    @(link_name = "clang_HTMLStartTagComment_isSelfClosing")
    HTMLStartTagComment_isSelfClosing :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_HTMLStartTag_getNumAttrs")
    HTMLStartTag_getNumAttrs :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_HTMLStartTag_getAttrName")
    HTMLStartTag_getAttrName :: proc(comment: Comment, AttrIdx: u32) -> String ---

    @(link_name = "clang_HTMLStartTag_getAttrValue")
    HTMLStartTag_getAttrValue :: proc(comment: Comment, AttrIdx: u32) -> String ---

    @(link_name = "clang_BlockCommandComment_getCommandName")
    BlockCommandComment_getCommandName :: proc(comment: Comment) -> String ---

    @(link_name = "clang_BlockCommandComment_getNumArgs")
    BlockCommandComment_getNumArgs :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_BlockCommandComment_getArgText")
    BlockCommandComment_getArgText :: proc(comment: Comment, ArgIdx: u32) -> String ---

    @(link_name = "clang_BlockCommandComment_getParagraph")
    BlockCommandComment_getParagraph :: proc(comment: Comment) -> Comment ---

    @(link_name = "clang_ParamCommandComment_getParamName")
    ParamCommandComment_getParamName :: proc(comment: Comment) -> String ---

    @(link_name = "clang_ParamCommandComment_isParamIndexValid")
    ParamCommandComment_isParamIndexValid :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_ParamCommandComment_getParamIndex")
    ParamCommandComment_getParamIndex :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_ParamCommandComment_isDirectionExplicit")
    ParamCommandComment_isDirectionExplicit :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_ParamCommandComment_getDirection")
    ParamCommandComment_getDirection :: proc(comment: Comment) -> CommentParamPassDirection ---

    @(link_name = "clang_TParamCommandComment_getParamName")
    TParamCommandComment_getParamName :: proc(comment: Comment) -> String ---

    @(link_name = "clang_TParamCommandComment_isParamPositionValid")
    TParamCommandComment_isParamPositionValid :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_TParamCommandComment_getDepth")
    TParamCommandComment_getDepth :: proc(comment: Comment) -> u32 ---

    @(link_name = "clang_TParamCommandComment_getIndex")
    TParamCommandComment_getIndex :: proc(comment: Comment, Depth: u32) -> u32 ---

    @(link_name = "clang_VerbatimBlockLineComment_getText")
    VerbatimBlockLineComment_getText :: proc(comment: Comment) -> String ---

    @(link_name = "clang_VerbatimLineComment_getText")
    VerbatimLineComment_getText :: proc(comment: Comment) -> String ---

    @(link_name = "clang_HTMLTagComment_getAsString")
    HTMLTagComment_getAsString :: proc(comment: Comment) -> String ---

    @(link_name = "clang_FullComment_getAsHTML")
    FullComment_getAsHTML :: proc(comment: Comment) -> String ---

    @(link_name = "clang_FullComment_getAsXML")
    FullComment_getAsXML :: proc(comment: Comment) -> String ---

    @(link_name = "clang_createAPISet")
    createAPISet :: proc(tu: TranslationUnit, out_api: ^APISet) -> ErrorCode ---

    @(link_name = "clang_disposeAPISet")
    disposeAPISet :: proc(api: APISet) ---

    @(link_name = "clang_getSymbolGraphForUSR")
    getSymbolGraphForUSR :: proc(usr: cstring, api: APISet) -> String ---

    @(link_name = "clang_getSymbolGraphForCursor")
    getSymbolGraphForCursor :: proc(cursor: Cursor) -> String ---

    @(link_name = "clang_install_aborting_llvm_fatal_error_handler")
    install_aborting_llvm_fatal_error_handler :: proc() ---

    @(link_name = "clang_uninstall_llvm_fatal_error_handler")
    uninstall_llvm_fatal_error_handler :: proc() ---

    @(link_name = "clang_createIndex")
    createIndex :: proc(excludeDeclarationsFromPCH: i32, displayDiagnostics: i32) -> Index ---

    @(link_name = "clang_disposeIndex")
    disposeIndex :: proc(index: Index) ---

    @(link_name = "clang_createIndexWithOptions")
    createIndexWithOptions :: proc(options: rawptr) -> Index ---

    @(link_name = "clang_CXIndex_setGlobalOptions")
    Index_setGlobalOptions :: proc(param0: Index, options: u32) ---

    @(link_name = "clang_CXIndex_getGlobalOptions")
    Index_getGlobalOptions :: proc(param0: Index) -> u32 ---

    @(link_name = "clang_CXIndex_setInvocationEmissionPathOption")
    Index_setInvocationEmissionPathOption :: proc(param0: Index, Path: cstring) ---

    @(link_name = "clang_isFileMultipleIncludeGuarded")
    isFileMultipleIncludeGuarded :: proc(tu: TranslationUnit, file: File) -> u32 ---

    @(link_name = "clang_getFile")
    getFile :: proc(tu: TranslationUnit, file_name: cstring) -> File ---

    @(link_name = "clang_getFileContents")
    getFileContents :: proc(tu: TranslationUnit, file: File, size: ^u64) -> cstring ---

    @(link_name = "clang_getLocation")
    getLocation :: proc(tu: TranslationUnit, file: File, line: u32, column: u32) -> SourceLocation ---

    @(link_name = "clang_getLocationForOffset")
    getLocationForOffset :: proc(tu: TranslationUnit, file: File, offset: u32) -> SourceLocation ---

    @(link_name = "clang_getSkippedRanges")
    getSkippedRanges :: proc(tu: TranslationUnit, file: File) -> ^SourceRangeList ---

    @(link_name = "clang_getAllSkippedRanges")
    getAllSkippedRanges :: proc(tu: TranslationUnit) -> ^SourceRangeList ---

    @(link_name = "clang_getNumDiagnostics")
    getNumDiagnostics :: proc(Unit: TranslationUnit) -> u32 ---

    @(link_name = "clang_getDiagnostic")
    getDiagnostic :: proc(Unit: TranslationUnit, Index: u32) -> Diagnostic ---

    @(link_name = "clang_getDiagnosticSetFromTU")
    getDiagnosticSetFromTU :: proc(Unit: TranslationUnit) -> DiagnosticSet ---

    @(link_name = "clang_getTranslationUnitSpelling")
    getTranslationUnitSpelling :: proc(CTUnit: TranslationUnit) -> String ---

    @(link_name = "clang_createTranslationUnitFromSourceFile")
    createTranslationUnitFromSourceFile :: proc(CIdx: Index, source_filename: cstring, num_clang_command_line_args: i32, clang_command_line_args: [^]cstring, num_unsaved_files: u32, unsaved_files: [^]UnsavedFile) -> TranslationUnit ---

    @(link_name = "clang_createTranslationUnit")
    createTranslationUnit :: proc(CIdx: Index, ast_filename: cstring) -> TranslationUnit ---

    @(link_name = "clang_createTranslationUnit2")
    createTranslationUnit2 :: proc(CIdx: Index, ast_filename: cstring, out_TU: ^TranslationUnit) -> ErrorCode ---

    @(link_name = "clang_defaultEditingTranslationUnitOptions")
    defaultEditingTranslationUnitOptions :: proc() -> u32 ---

    @(link_name = "clang_parseTranslationUnit")
    parseTranslationUnit :: proc(CIdx: Index, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]UnsavedFile, num_unsaved_files: u32, options: u32) -> TranslationUnit ---

    @(link_name = "clang_parseTranslationUnit2")
    parseTranslationUnit2 :: proc(CIdx: Index, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]UnsavedFile, num_unsaved_files: u32, options: u32, out_TU: ^TranslationUnit) -> ErrorCode ---

    @(link_name = "clang_parseTranslationUnit2FullArgv")
    parseTranslationUnit2FullArgv :: proc(CIdx: Index, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]UnsavedFile, num_unsaved_files: u32, options: u32, out_TU: ^TranslationUnit) -> ErrorCode ---

    @(link_name = "clang_defaultSaveOptions")
    defaultSaveOptions :: proc(TU: TranslationUnit) -> u32 ---

    @(link_name = "clang_saveTranslationUnit")
    saveTranslationUnit :: proc(TU: TranslationUnit, FileName: cstring, options: u32) -> i32 ---

    @(link_name = "clang_suspendTranslationUnit")
    suspendTranslationUnit :: proc(param0: TranslationUnit) -> u32 ---

    @(link_name = "clang_disposeTranslationUnit")
    disposeTranslationUnit :: proc(param0: TranslationUnit) ---

    @(link_name = "clang_defaultReparseOptions")
    defaultReparseOptions :: proc(TU: TranslationUnit) -> u32 ---

    @(link_name = "clang_reparseTranslationUnit")
    reparseTranslationUnit :: proc(TU: TranslationUnit, num_unsaved_files: u32, unsaved_files: [^]UnsavedFile, options: u32) -> i32 ---

    @(link_name = "clang_getTUResourceUsageName")
    getTUResourceUsageName :: proc(kind: TUResourceUsageKind) -> cstring ---

    @(link_name = "clang_getCXTUResourceUsage")
    getCXTUResourceUsage :: proc(TU: TranslationUnit) -> TUResourceUsage ---

    @(link_name = "clang_disposeCXTUResourceUsage")
    disposeCXTUResourceUsage :: proc(usage: TUResourceUsage) ---

    @(link_name = "clang_getTranslationUnitTargetInfo")
    getTranslationUnitTargetInfo :: proc(CTUnit: TranslationUnit) -> TargetInfo ---

    @(link_name = "clang_TargetInfo_dispose")
    TargetInfo_dispose :: proc(Info: TargetInfo) ---

    @(link_name = "clang_TargetInfo_getTriple")
    TargetInfo_getTriple :: proc(Info: TargetInfo) -> String ---

    @(link_name = "clang_TargetInfo_getPointerWidth")
    TargetInfo_getPointerWidth :: proc(Info: TargetInfo) -> i32 ---

    @(link_name = "clang_getNullCursor")
    getNullCursor :: proc() -> Cursor ---

    @(link_name = "clang_getTranslationUnitCursor")
    getTranslationUnitCursor :: proc(param0: TranslationUnit) -> Cursor ---

    @(link_name = "clang_equalCursors")
    equalCursors :: proc(param0: Cursor, param1: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isNull")
    Cursor_isNull :: proc(cursor: Cursor) -> i32 ---

    @(link_name = "clang_hashCursor")
    hashCursor :: proc(param0: Cursor) -> u32 ---

    @(link_name = "clang_getCursorKind")
    getCursorKind :: proc(param0: Cursor) -> CursorKind ---

    @(link_name = "clang_isDeclaration")
    isDeclaration :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isInvalidDeclaration")
    isInvalidDeclaration :: proc(param0: Cursor) -> u32 ---

    @(link_name = "clang_isReference")
    isReference :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isExpression")
    isExpression :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isStatement")
    isStatement :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isAttribute")
    isAttribute :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_Cursor_hasAttrs")
    Cursor_hasAttrs :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_isInvalid")
    isInvalid :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isTranslationUnit")
    isTranslationUnit :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isPreprocessing")
    isPreprocessing :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_isUnexposed")
    isUnexposed :: proc(param0: CursorKind) -> u32 ---

    @(link_name = "clang_getCursorLinkage")
    getCursorLinkage :: proc(cursor: Cursor) -> LinkageKind ---

    @(link_name = "clang_getCursorVisibility")
    getCursorVisibility :: proc(cursor: Cursor) -> VisibilityKind ---

    @(link_name = "clang_getCursorAvailability")
    getCursorAvailability :: proc(cursor: Cursor) -> AvailabilityKind ---

    @(link_name = "clang_getCursorPlatformAvailability")
    getCursorPlatformAvailability :: proc(cursor: Cursor, always_deprecated: ^i32, deprecated_message: ^String, always_unavailable: ^i32, unavailable_message: ^String, availability: ^PlatformAvailability, availability_size: i32) -> i32 ---

    @(link_name = "clang_disposeCXPlatformAvailability")
    disposeCXPlatformAvailability :: proc(availability: ^PlatformAvailability) ---

    @(link_name = "clang_Cursor_getVarDeclInitializer")
    Cursor_getVarDeclInitializer :: proc(cursor: Cursor) -> Cursor ---

    @(link_name = "clang_Cursor_hasVarDeclGlobalStorage")
    Cursor_hasVarDeclGlobalStorage :: proc(cursor: Cursor) -> i32 ---

    @(link_name = "clang_Cursor_hasVarDeclExternalStorage")
    Cursor_hasVarDeclExternalStorage :: proc(cursor: Cursor) -> i32 ---

    @(link_name = "clang_getCursorLanguage")
    getCursorLanguage :: proc(cursor: Cursor) -> LanguageKind ---

    @(link_name = "clang_getCursorTLSKind")
    getCursorTLSKind :: proc(cursor: Cursor) -> TLSKind ---

    @(link_name = "clang_Cursor_getTranslationUnit")
    Cursor_getTranslationUnit :: proc(param0: Cursor) -> TranslationUnit ---

    @(link_name = "clang_createCXCursorSet")
    createCXCursorSet :: proc() -> CursorSet ---

    @(link_name = "clang_disposeCXCursorSet")
    disposeCXCursorSet :: proc(cset: CursorSet) ---

    @(link_name = "clang_CXCursorSet_contains")
    CursorSet_contains :: proc(cset: CursorSet, cursor: Cursor) -> u32 ---

    @(link_name = "clang_CXCursorSet_insert")
    CursorSet_insert :: proc(cset: CursorSet, cursor: Cursor) -> u32 ---

    @(link_name = "clang_getCursorSemanticParent")
    getCursorSemanticParent :: proc(cursor: Cursor) -> Cursor ---

    @(link_name = "clang_getCursorLexicalParent")
    getCursorLexicalParent :: proc(cursor: Cursor) -> Cursor ---

    @(link_name = "clang_getOverriddenCursors")
    getOverriddenCursors :: proc(cursor: Cursor, overridden: ^^Cursor, num_overridden: ^u32) ---

    @(link_name = "clang_disposeOverriddenCursors")
    disposeOverriddenCursors :: proc(overridden: ^Cursor) ---

    @(link_name = "clang_getIncludedFile")
    getIncludedFile :: proc(cursor: Cursor) -> File ---

    @(link_name = "clang_getCursor")
    getCursor :: proc(param0: TranslationUnit, param1: SourceLocation) -> Cursor ---

    @(link_name = "clang_getCursorLocation")
    getCursorLocation :: proc(param0: Cursor) -> SourceLocation ---

    @(link_name = "clang_getCursorExtent")
    getCursorExtent :: proc(param0: Cursor) -> SourceRange ---

    @(link_name = "clang_getCursorType")
    getCursorType :: proc(C: Cursor) -> Type ---

    @(link_name = "clang_getTypeSpelling")
    getTypeSpelling :: proc(CT: Type) -> String ---

    @(link_name = "clang_getTypedefDeclUnderlyingType")
    getTypedefDeclUnderlyingType :: proc(C: Cursor) -> Type ---

    @(link_name = "clang_getEnumDeclIntegerType")
    getEnumDeclIntegerType :: proc(C: Cursor) -> Type ---

    @(link_name = "clang_getEnumConstantDeclValue")
    getEnumConstantDeclValue :: proc(C: Cursor) -> i64 ---

    @(link_name = "clang_getEnumConstantDeclUnsignedValue")
    getEnumConstantDeclUnsignedValue :: proc(C: Cursor) -> u64 ---

    @(link_name = "clang_Cursor_isBitField")
    Cursor_isBitField :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_getFieldDeclBitWidth")
    getFieldDeclBitWidth :: proc(C: Cursor) -> i32 ---

    @(link_name = "clang_Cursor_getNumArguments")
    Cursor_getNumArguments :: proc(C: Cursor) -> i32 ---

    @(link_name = "clang_Cursor_getArgument")
    Cursor_getArgument :: proc(C: Cursor, i: u32) -> Cursor ---

    @(link_name = "clang_Cursor_getNumTemplateArguments")
    Cursor_getNumTemplateArguments :: proc(C: Cursor) -> i32 ---

    @(link_name = "clang_Cursor_getTemplateArgumentKind")
    Cursor_getTemplateArgumentKind :: proc(C: Cursor, I: u32) -> TemplateArgumentKind ---

    @(link_name = "clang_Cursor_getTemplateArgumentType")
    Cursor_getTemplateArgumentType :: proc(C: Cursor, I: u32) -> Type ---

    @(link_name = "clang_Cursor_getTemplateArgumentValue")
    Cursor_getTemplateArgumentValue :: proc(C: Cursor, I: u32) -> i64 ---

    @(link_name = "clang_Cursor_getTemplateArgumentUnsignedValue")
    Cursor_getTemplateArgumentUnsignedValue :: proc(C: Cursor, I: u32) -> u64 ---

    @(link_name = "clang_equalTypes")
    equalTypes :: proc(A: Type, B: Type) -> u32 ---

    @(link_name = "clang_getCanonicalType")
    getCanonicalType :: proc(T: Type) -> Type ---

    @(link_name = "clang_isConstQualifiedType")
    isConstQualifiedType :: proc(T: Type) -> u32 ---

    @(link_name = "clang_Cursor_isMacroFunctionLike")
    Cursor_isMacroFunctionLike :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isMacroBuiltin")
    Cursor_isMacroBuiltin :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isFunctionInlined")
    Cursor_isFunctionInlined :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_isVolatileQualifiedType")
    isVolatileQualifiedType :: proc(T: Type) -> u32 ---

    @(link_name = "clang_isRestrictQualifiedType")
    isRestrictQualifiedType :: proc(T: Type) -> u32 ---

    @(link_name = "clang_getAddressSpace")
    getAddressSpace :: proc(T: Type) -> u32 ---

    @(link_name = "clang_getTypedefName")
    getTypedefName :: proc(CT: Type) -> String ---

    @(link_name = "clang_getPointeeType")
    getPointeeType :: proc(T: Type) -> Type ---

    @(link_name = "clang_getUnqualifiedType")
    getUnqualifiedType :: proc(CT: Type) -> Type ---

    @(link_name = "clang_getNonReferenceType")
    getNonReferenceType :: proc(CT: Type) -> Type ---

    @(link_name = "clang_getTypeDeclaration")
    getTypeDeclaration :: proc(T: Type) -> Cursor ---

    @(link_name = "clang_getDeclObjCTypeEncoding")
    getDeclObjCTypeEncoding :: proc(C: Cursor) -> String ---

    @(link_name = "clang_Type_getObjCEncoding")
    Type_getObjCEncoding :: proc(type: Type) -> String ---

    @(link_name = "clang_getTypeKindSpelling")
    getTypeKindSpelling :: proc(K: TypeKind) -> String ---

    @(link_name = "clang_getFunctionTypeCallingConv")
    getFunctionTypeCallingConv :: proc(T: Type) -> CallingConv ---

    @(link_name = "clang_getResultType")
    getResultType :: proc(T: Type) -> Type ---

    @(link_name = "clang_getExceptionSpecificationType")
    getExceptionSpecificationType :: proc(T: Type) -> i32 ---

    @(link_name = "clang_getNumArgTypes")
    getNumArgTypes :: proc(T: Type) -> i32 ---

    @(link_name = "clang_getArgType")
    getArgType :: proc(T: Type, i: u32) -> Type ---

    @(link_name = "clang_Type_getObjCObjectBaseType")
    Type_getObjCObjectBaseType :: proc(T: Type) -> Type ---

    @(link_name = "clang_Type_getNumObjCProtocolRefs")
    Type_getNumObjCProtocolRefs :: proc(T: Type) -> u32 ---

    @(link_name = "clang_Type_getObjCProtocolDecl")
    Type_getObjCProtocolDecl :: proc(T: Type, i: u32) -> Cursor ---

    @(link_name = "clang_Type_getNumObjCTypeArgs")
    Type_getNumObjCTypeArgs :: proc(T: Type) -> u32 ---

    @(link_name = "clang_Type_getObjCTypeArg")
    Type_getObjCTypeArg :: proc(T: Type, i: u32) -> Type ---

    @(link_name = "clang_isFunctionTypeVariadic")
    isFunctionTypeVariadic :: proc(T: Type) -> u32 ---

    @(link_name = "clang_getCursorResultType")
    getCursorResultType :: proc(C: Cursor) -> Type ---

    @(link_name = "clang_getCursorExceptionSpecificationType")
    getCursorExceptionSpecificationType :: proc(C: Cursor) -> i32 ---

    @(link_name = "clang_isPODType")
    isPODType :: proc(T: Type) -> u32 ---

    @(link_name = "clang_getElementType")
    getElementType :: proc(T: Type) -> Type ---

    @(link_name = "clang_getNumElements")
    getNumElements :: proc(T: Type) -> i64 ---

    @(link_name = "clang_getArrayElementType")
    getArrayElementType :: proc(T: Type) -> Type ---

    @(link_name = "clang_getArraySize")
    getArraySize :: proc(T: Type) -> i64 ---

    @(link_name = "clang_Type_getNamedType")
    Type_getNamedType :: proc(T: Type) -> Type ---

    @(link_name = "clang_Type_isTransparentTagTypedef")
    Type_isTransparentTagTypedef :: proc(T: Type) -> u32 ---

    @(link_name = "clang_Type_getNullability")
    Type_getNullability :: proc(T: Type) -> TypeNullabilityKind ---

    @(link_name = "clang_Type_getAlignOf")
    Type_getAlignOf :: proc(T: Type) -> i64 ---

    @(link_name = "clang_Type_getClassType")
    Type_getClassType :: proc(T: Type) -> Type ---

    @(link_name = "clang_Type_getSizeOf")
    Type_getSizeOf :: proc(T: Type) -> i64 ---

    @(link_name = "clang_Type_getOffsetOf")
    Type_getOffsetOf :: proc(T: Type, S: cstring) -> i64 ---

    @(link_name = "clang_Type_getModifiedType")
    Type_getModifiedType :: proc(T: Type) -> Type ---

    @(link_name = "clang_Type_getValueType")
    Type_getValueType :: proc(CT: Type) -> Type ---

    @(link_name = "clang_Cursor_getOffsetOfField")
    Cursor_getOffsetOfField :: proc(C: Cursor) -> i64 ---

    @(link_name = "clang_Cursor_isAnonymous")
    Cursor_isAnonymous :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isAnonymousRecordDecl")
    Cursor_isAnonymousRecordDecl :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isInlineNamespace")
    Cursor_isInlineNamespace :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Type_getNumTemplateArguments")
    Type_getNumTemplateArguments :: proc(T: Type) -> i32 ---

    @(link_name = "clang_Type_getTemplateArgumentAsType")
    Type_getTemplateArgumentAsType :: proc(T: Type, i: u32) -> Type ---

    @(link_name = "clang_Type_getCXXRefQualifier")
    Type_getCXXRefQualifier :: proc(T: Type) -> RefQualifierKind ---

    @(link_name = "clang_isVirtualBase")
    isVirtualBase :: proc(param0: Cursor) -> u32 ---

    @(link_name = "clang_getCXXAccessSpecifier")
    getCXXAccessSpecifier :: proc(param0: Cursor) -> CX_CXXAccessSpecifier ---

    @(link_name = "clang_Cursor_getStorageClass")
    Cursor_getStorageClass :: proc(param0: Cursor) -> CX_StorageClass ---

    @(link_name = "clang_getNumOverloadedDecls")
    getNumOverloadedDecls :: proc(cursor: Cursor) -> u32 ---

    @(link_name = "clang_getOverloadedDecl")
    getOverloadedDecl :: proc(cursor: Cursor, index: u32) -> Cursor ---

    @(link_name = "clang_getIBOutletCollectionType")
    getIBOutletCollectionType :: proc(param0: Cursor) -> Type ---

    @(link_name = "clang_visitChildren")
    visitChildren :: proc(parent: Cursor, visitor: CursorVisitor, client_data: ClientData) -> u32 ---

    @(link_name = "clang_visitChildrenWithBlock")
    visitChildrenWithBlock :: proc(parent: Cursor, block: CursorVisitorBlock) -> u32 ---

    @(link_name = "clang_getCursorUSR")
    getCursorUSR :: proc(param0: Cursor) -> String ---

    @(link_name = "clang_constructUSR_ObjCClass")
    constructUSR_ObjCClass :: proc(class_name: cstring) -> String ---

    @(link_name = "clang_constructUSR_ObjCCategory")
    constructUSR_ObjCCategory :: proc(class_name: cstring, category_name: cstring) -> String ---

    @(link_name = "clang_constructUSR_ObjCProtocol")
    constructUSR_ObjCProtocol :: proc(protocol_name: cstring) -> String ---

    @(link_name = "clang_constructUSR_ObjCIvar")
    constructUSR_ObjCIvar :: proc(name: cstring, classUSR: String) -> String ---

    @(link_name = "clang_constructUSR_ObjCMethod")
    constructUSR_ObjCMethod :: proc(name: cstring, isInstanceMethod: u32, classUSR: String) -> String ---

    @(link_name = "clang_constructUSR_ObjCProperty")
    constructUSR_ObjCProperty :: proc(property: cstring, classUSR: String) -> String ---

    @(link_name = "clang_getCursorSpelling")
    getCursorSpelling :: proc(param0: Cursor) -> String ---

    @(link_name = "clang_Cursor_getSpellingNameRange")
    Cursor_getSpellingNameRange :: proc(param0: Cursor, pieceIndex: u32, options: u32) -> SourceRange ---

    @(link_name = "clang_PrintingPolicy_getProperty")
    PrintingPolicy_getProperty :: proc(Policy: PrintingPolicy, Property: PrintingPolicyProperty) -> u32 ---

    @(link_name = "clang_PrintingPolicy_setProperty")
    PrintingPolicy_setProperty :: proc(Policy: PrintingPolicy, Property: PrintingPolicyProperty, Value: u32) ---

    @(link_name = "clang_getCursorPrintingPolicy")
    getCursorPrintingPolicy :: proc(param0: Cursor) -> PrintingPolicy ---

    @(link_name = "clang_PrintingPolicy_dispose")
    PrintingPolicy_dispose :: proc(Policy: PrintingPolicy) ---

    @(link_name = "clang_getCursorPrettyPrinted")
    getCursorPrettyPrinted :: proc(Cursor: Cursor, Policy: PrintingPolicy) -> String ---

    @(link_name = "clang_getCursorDisplayName")
    getCursorDisplayName :: proc(param0: Cursor) -> String ---

    @(link_name = "clang_getCursorReferenced")
    getCursorReferenced :: proc(param0: Cursor) -> Cursor ---

    @(link_name = "clang_getCursorDefinition")
    getCursorDefinition :: proc(param0: Cursor) -> Cursor ---

    @(link_name = "clang_isCursorDefinition")
    isCursorDefinition :: proc(param0: Cursor) -> u32 ---

    @(link_name = "clang_getCanonicalCursor")
    getCanonicalCursor :: proc(param0: Cursor) -> Cursor ---

    @(link_name = "clang_Cursor_getObjCSelectorIndex")
    Cursor_getObjCSelectorIndex :: proc(param0: Cursor) -> i32 ---

    @(link_name = "clang_Cursor_isDynamicCall")
    Cursor_isDynamicCall :: proc(C: Cursor) -> i32 ---

    @(link_name = "clang_Cursor_getReceiverType")
    Cursor_getReceiverType :: proc(C: Cursor) -> Type ---

    @(link_name = "clang_Cursor_getObjCPropertyAttributes")
    Cursor_getObjCPropertyAttributes :: proc(C: Cursor, reserved: u32) -> u32 ---

    @(link_name = "clang_Cursor_getObjCPropertyGetterName")
    Cursor_getObjCPropertyGetterName :: proc(C: Cursor) -> String ---

    @(link_name = "clang_Cursor_getObjCPropertySetterName")
    Cursor_getObjCPropertySetterName :: proc(C: Cursor) -> String ---

    @(link_name = "clang_Cursor_getObjCDeclQualifiers")
    Cursor_getObjCDeclQualifiers :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isObjCOptional")
    Cursor_isObjCOptional :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isVariadic")
    Cursor_isVariadic :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_Cursor_isExternalSymbol")
    Cursor_isExternalSymbol :: proc(C: Cursor, language: ^String, definedIn: ^String, isGenerated: ^u32) -> u32 ---

    @(link_name = "clang_Cursor_getCommentRange")
    Cursor_getCommentRange :: proc(C: Cursor) -> SourceRange ---

    @(link_name = "clang_Cursor_getRawCommentText")
    Cursor_getRawCommentText :: proc(C: Cursor) -> String ---

    @(link_name = "clang_Cursor_getBriefCommentText")
    Cursor_getBriefCommentText :: proc(C: Cursor) -> String ---

    @(link_name = "clang_Cursor_getMangling")
    Cursor_getMangling :: proc(param0: Cursor) -> String ---

    @(link_name = "clang_Cursor_getCXXManglings")
    Cursor_getCXXManglings :: proc(param0: Cursor) -> ^StringSet ---

    @(link_name = "clang_Cursor_getObjCManglings")
    Cursor_getObjCManglings :: proc(param0: Cursor) -> ^StringSet ---

    @(link_name = "clang_Cursor_getModule")
    Cursor_getModule :: proc(C: Cursor) -> Module ---

    @(link_name = "clang_getModuleForFile")
    getModuleForFile :: proc(param0: TranslationUnit, param1: File) -> Module ---

    @(link_name = "clang_Module_getASTFile")
    Module_getASTFile :: proc(module: Module) -> File ---

    @(link_name = "clang_Module_getParent")
    Module_getParent :: proc(module: Module) -> Module ---

    @(link_name = "clang_Module_getName")
    Module_getName :: proc(module: Module) -> String ---

    @(link_name = "clang_Module_getFullName")
    Module_getFullName :: proc(module: Module) -> String ---

    @(link_name = "clang_Module_isSystem")
    Module_isSystem :: proc(module: Module) -> i32 ---

    @(link_name = "clang_Module_getNumTopLevelHeaders")
    Module_getNumTopLevelHeaders :: proc(param0: TranslationUnit, module: Module) -> u32 ---

    @(link_name = "clang_Module_getTopLevelHeader")
    Module_getTopLevelHeader :: proc(param0: TranslationUnit, module: Module, Index: u32) -> File ---

    @(link_name = "clang_CXXConstructor_isConvertingConstructor")
    XConstructor_isConvertingConstructor :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXConstructor_isCopyConstructor")
    XConstructor_isCopyConstructor :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXConstructor_isDefaultConstructor")
    XConstructor_isDefaultConstructor :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXConstructor_isMoveConstructor")
    XConstructor_isMoveConstructor :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXField_isMutable")
    XField_isMutable :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isDefaulted")
    XMethod_isDefaulted :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isDeleted")
    XMethod_isDeleted :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isPureVirtual")
    XMethod_isPureVirtual :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isStatic")
    XMethod_isStatic :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isVirtual")
    XMethod_isVirtual :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isCopyAssignmentOperator")
    XMethod_isCopyAssignmentOperator :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isMoveAssignmentOperator")
    XMethod_isMoveAssignmentOperator :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isExplicit")
    XMethod_isExplicit :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXRecord_isAbstract")
    XRecord_isAbstract :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_EnumDecl_isScoped")
    EnumDecl_isScoped :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isConst")
    XMethod_isConst :: proc(C: Cursor) -> u32 ---

    @(link_name = "clang_getTemplateCursorKind")
    getTemplateCursorKind :: proc(C: Cursor) -> CursorKind ---

    @(link_name = "clang_getSpecializedCursorTemplate")
    getSpecializedCursorTemplate :: proc(C: Cursor) -> Cursor ---

    @(link_name = "clang_getCursorReferenceNameRange")
    getCursorReferenceNameRange :: proc(C: Cursor, NameFlags: u32, PieceIndex: u32) -> SourceRange ---

    @(link_name = "clang_getToken")
    getToken :: proc(TU: TranslationUnit, Location: SourceLocation) -> ^Token ---

    @(link_name = "clang_getTokenKind")
    getTokenKind :: proc(param0: Token) -> TokenKind ---

    @(link_name = "clang_getTokenSpelling")
    getTokenSpelling :: proc(param0: TranslationUnit, param1: Token) -> String ---

    @(link_name = "clang_getTokenLocation")
    getTokenLocation :: proc(param0: TranslationUnit, param1: Token) -> SourceLocation ---

    @(link_name = "clang_getTokenExtent")
    getTokenExtent :: proc(param0: TranslationUnit, param1: Token) -> SourceRange ---

    @(link_name = "clang_tokenize")
    tokenize :: proc(TU: TranslationUnit, Range: SourceRange, Tokens: ^[^]Token, NumTokens: [^]u32) ---

    @(link_name = "clang_annotateTokens")
    annotateTokens :: proc(TU: TranslationUnit, Tokens: [^]Token, NumTokens: u32, Cursors: [^]Cursor) ---

    @(link_name = "clang_disposeTokens")
    disposeTokens :: proc(TU: TranslationUnit, Tokens: [^]Token, NumTokens: u32) ---

    @(link_name = "clang_getCursorKindSpelling")
    getCursorKindSpelling :: proc(Kind: CursorKind) -> String ---

    @(link_name = "clang_getDefinitionSpellingAndExtent")
    getDefinitionSpellingAndExtent :: proc(param0: Cursor, startBuf: ^cstring, endBuf: ^cstring, startLine: ^u32, startColumn: ^u32, endLine: ^u32, endColumn: ^u32) ---

    @(link_name = "clang_enableStackTraces")
    enableStackTraces :: proc() ---

    @(link_name = "clang_executeOnThread")
    executeOnThread :: proc(fn: fn_func_ptr_anon_0, user_data: rawptr, stack_size: u32) ---

    @(link_name = "clang_getCompletionChunkKind")
    getCompletionChunkKind :: proc(completion_string: CompletionString, chunk_number: u32) -> CompletionChunkKind ---

    @(link_name = "clang_getCompletionChunkText")
    getCompletionChunkText :: proc(completion_string: CompletionString, chunk_number: u32) -> String ---

    @(link_name = "clang_getCompletionChunkCompletionString")
    getCompletionChunkCompletionString :: proc(completion_string: CompletionString, chunk_number: u32) -> CompletionString ---

    @(link_name = "clang_getNumCompletionChunks")
    getNumCompletionChunks :: proc(completion_string: CompletionString) -> u32 ---

    @(link_name = "clang_getCompletionPriority")
    getCompletionPriority :: proc(completion_string: CompletionString) -> u32 ---

    @(link_name = "clang_getCompletionAvailability")
    getCompletionAvailability :: proc(completion_string: CompletionString) -> AvailabilityKind ---

    @(link_name = "clang_getCompletionNumAnnotations")
    getCompletionNumAnnotations :: proc(completion_string: CompletionString) -> u32 ---

    @(link_name = "clang_getCompletionAnnotation")
    getCompletionAnnotation :: proc(completion_string: CompletionString, annotation_number: u32) -> String ---

    @(link_name = "clang_getCompletionParent")
    getCompletionParent :: proc(completion_string: CompletionString, kind: ^CursorKind) -> String ---

    @(link_name = "clang_getCompletionBriefComment")
    getCompletionBriefComment :: proc(completion_string: CompletionString) -> String ---

    @(link_name = "clang_getCursorCompletionString")
    getCursorCompletionString :: proc(cursor: Cursor) -> CompletionString ---

    @(link_name = "clang_getCompletionNumFixIts")
    getCompletionNumFixIts :: proc(results: [^]CodeCompleteResults, completion_index: u32) -> u32 ---

    @(link_name = "clang_getCompletionFixIt")
    getCompletionFixIt :: proc(results: [^]CodeCompleteResults, completion_index: u32, fixit_index: u32, replacement_range: ^SourceRange) -> String ---

    @(link_name = "clang_defaultCodeCompleteOptions")
    defaultCodeCompleteOptions :: proc() -> u32 ---

    @(link_name = "clang_codeCompleteAt")
    codeCompleteAt :: proc(TU: TranslationUnit, complete_filename: cstring, complete_line: u32, complete_column: u32, unsaved_files: [^]UnsavedFile, num_unsaved_files: u32, options: u32) -> ^CodeCompleteResults ---

    @(link_name = "clang_sortCodeCompletionResults")
    sortCodeCompletionResults :: proc(Results: [^]CompletionResult, NumResults: u32) ---

    @(link_name = "clang_disposeCodeCompleteResults")
    disposeCodeCompleteResults :: proc(Results: [^]CodeCompleteResults) ---

    @(link_name = "clang_codeCompleteGetNumDiagnostics")
    codeCompleteGetNumDiagnostics :: proc(Results: [^]CodeCompleteResults) -> u32 ---

    @(link_name = "clang_codeCompleteGetDiagnostic")
    codeCompleteGetDiagnostic :: proc(Results: [^]CodeCompleteResults, Index: u32) -> Diagnostic ---

    @(link_name = "clang_codeCompleteGetContexts")
    codeCompleteGetContexts :: proc(Results: [^]CodeCompleteResults) -> u64 ---

    @(link_name = "clang_codeCompleteGetContainerKind")
    codeCompleteGetContainerKind :: proc(Results: [^]CodeCompleteResults, IsIncomplete: ^u32) -> CursorKind ---

    @(link_name = "clang_codeCompleteGetContainerUSR")
    codeCompleteGetContainerUSR :: proc(Results: [^]CodeCompleteResults) -> String ---

    @(link_name = "clang_codeCompleteGetObjCSelector")
    codeCompleteGetObjCSelector :: proc(Results: [^]CodeCompleteResults) -> String ---

    @(link_name = "clang_getClangVersion")
    getClangVersion :: proc() -> String ---

    @(link_name = "clang_toggleCrashRecovery")
    toggleCrashRecovery :: proc(isEnabled: u32) ---

    @(link_name = "clang_getInclusions")
    getInclusions :: proc(tu: TranslationUnit, visitor: InclusionVisitor, client_data: ClientData) ---

    @(link_name = "clang_Cursor_Evaluate")
    Cursor_Evaluate :: proc(C: Cursor) -> EvalResult ---

    @(link_name = "clang_EvalResult_getKind")
    EvalResult_getKind :: proc(E: EvalResult) -> EvalResultKind ---

    @(link_name = "clang_EvalResult_getAsInt")
    EvalResult_getAsInt :: proc(E: EvalResult) -> i32 ---

    @(link_name = "clang_EvalResult_getAsLongLong")
    EvalResult_getAsLongLong :: proc(E: EvalResult) -> i64 ---

    @(link_name = "clang_EvalResult_isUnsignedInt")
    EvalResult_isUnsignedInt :: proc(E: EvalResult) -> u32 ---

    @(link_name = "clang_EvalResult_getAsUnsigned")
    EvalResult_getAsUnsigned :: proc(E: EvalResult) -> u64 ---

    @(link_name = "clang_EvalResult_getAsDouble")
    EvalResult_getAsDouble :: proc(E: EvalResult) -> f64 ---

    @(link_name = "clang_EvalResult_getAsStr")
    EvalResult_getAsStr :: proc(E: EvalResult) -> cstring ---

    @(link_name = "clang_EvalResult_dispose")
    EvalResult_dispose :: proc(E: EvalResult) ---

    @(link_name = "clang_getRemappings")
    getRemappings :: proc(path: cstring) -> Remapping ---

    @(link_name = "clang_getRemappingsFromFileList")
    getRemappingsFromFileList :: proc(filePaths: [^]cstring, numFiles: u32) -> Remapping ---

    @(link_name = "clang_remap_getNumFiles")
    remap_getNumFiles :: proc(param0: Remapping) -> u32 ---

    @(link_name = "clang_remap_getFilenames")
    remap_getFilenames :: proc(param0: Remapping, index: u32, original: ^String, transformed: ^String) ---

    @(link_name = "clang_remap_dispose")
    remap_dispose :: proc(param0: Remapping) ---

    @(link_name = "clang_findReferencesInFile")
    findReferencesInFile :: proc(cursor: Cursor, file: File, visitor: CursorAndRangeVisitor) -> Result ---

    @(link_name = "clang_findIncludesInFile")
    findIncludesInFile :: proc(TU: TranslationUnit, file: File, visitor: CursorAndRangeVisitor) -> Result ---

    @(link_name = "clang_findReferencesInFileWithBlock")
    findReferencesInFileWithBlock :: proc(param0: Cursor, param1: File, param2: CursorAndRangeVisitorBlock) -> Result ---

    @(link_name = "clang_findIncludesInFileWithBlock")
    findIncludesInFileWithBlock :: proc(param0: TranslationUnit, param1: File, param2: CursorAndRangeVisitorBlock) -> Result ---

    @(link_name = "clang_index_isEntityObjCContainerKind")
    index_isEntityObjCContainerKind :: proc(param0: IdxEntityKind) -> i32 ---

    @(link_name = "clang_index_getObjCContainerDeclInfo")
    index_getObjCContainerDeclInfo :: proc(param0: ^IdxDeclInfo) -> ^IdxObjCContainerDeclInfo ---

    @(link_name = "clang_index_getObjCInterfaceDeclInfo")
    index_getObjCInterfaceDeclInfo :: proc(param0: ^IdxDeclInfo) -> ^IdxObjCInterfaceDeclInfo ---

    @(link_name = "clang_index_getObjCCategoryDeclInfo")
    index_getObjCCategoryDeclInfo :: proc(param0: ^IdxDeclInfo) -> ^IdxObjCCategoryDeclInfo ---

    @(link_name = "clang_index_getObjCProtocolRefListInfo")
    index_getObjCProtocolRefListInfo :: proc(param0: ^IdxDeclInfo) -> ^IdxObjCProtocolRefListInfo ---

    @(link_name = "clang_index_getObjCPropertyDeclInfo")
    index_getObjCPropertyDeclInfo :: proc(param0: ^IdxDeclInfo) -> ^IdxObjCPropertyDeclInfo ---

    @(link_name = "clang_index_getIBOutletCollectionAttrInfo")
    index_getIBOutletCollectionAttrInfo :: proc(param0: ^IdxAttrInfo) -> ^IdxIBOutletCollectionAttrInfo ---

    @(link_name = "clang_index_getCXXClassDeclInfo")
    index_getCXXClassDeclInfo :: proc(param0: ^IdxDeclInfo) -> ^IdxCXXClassDeclInfo ---

    @(link_name = "clang_index_getClientContainer")
    index_getClientContainer :: proc(param0: ^IdxContainerInfo) -> IdxClientContainer ---

    @(link_name = "clang_index_setClientContainer")
    index_setClientContainer :: proc(param0: ^IdxContainerInfo, param1: IdxClientContainer) ---

    @(link_name = "clang_index_getClientEntity")
    index_getClientEntity :: proc(param0: ^IdxEntityInfo) -> IdxClientEntity ---

    @(link_name = "clang_index_setClientEntity")
    index_setClientEntity :: proc(param0: ^IdxEntityInfo, param1: IdxClientEntity) ---

    @(link_name = "clang_IndexAction_create")
    IndexAction_create :: proc(CIdx: Index) -> IndexAction ---

    @(link_name = "clang_IndexAction_dispose")
    IndexAction_dispose :: proc(param0: IndexAction) ---

    @(link_name = "clang_indexSourceFile")
    indexSourceFile :: proc(param0: IndexAction, client_data: ClientData, index_callbacks: [^]IndexerCallbacks, index_callbacks_size: u32, index_options: u32, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]UnsavedFile, num_unsaved_files: u32, out_TU: ^TranslationUnit, TU_options: u32) -> i32 ---

    @(link_name = "clang_indexSourceFileFullArgv")
    indexSourceFileFullArgv :: proc(param0: IndexAction, client_data: ClientData, index_callbacks: [^]IndexerCallbacks, index_callbacks_size: u32, index_options: u32, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]UnsavedFile, num_unsaved_files: u32, out_TU: ^TranslationUnit, TU_options: u32) -> i32 ---

    @(link_name = "clang_indexTranslationUnit")
    indexTranslationUnit :: proc(param0: IndexAction, client_data: ClientData, index_callbacks: [^]IndexerCallbacks, index_callbacks_size: u32, index_options: u32, param5: TranslationUnit) -> i32 ---

    @(link_name = "clang_indexLoc_getFileLocation")
    indexLoc_getFileLocation :: proc(loc: IdxLoc, indexFile: ^IdxClientFile, file: ^File, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_indexLoc_getCXSourceLocation")
    indexLoc_getCXSourceLocation :: proc(loc: IdxLoc) -> SourceLocation ---

    @(link_name = "clang_Type_visitFields")
    Type_visitFields :: proc(T: Type, visitor: FieldVisitor, client_data: ClientData) -> u32 ---

    @(link_name = "clang_getBinaryOperatorKindSpelling")
    getBinaryOperatorKindSpelling :: proc(kind: BinaryOperatorKind) -> String ---

    @(link_name = "clang_getCursorBinaryOperatorKind")
    getCursorBinaryOperatorKind :: proc(cursor: Cursor) -> BinaryOperatorKind ---

    @(link_name = "clang_getUnaryOperatorKindSpelling")
    getUnaryOperatorKindSpelling :: proc(kind: UnaryOperatorKind) -> String ---

    @(link_name = "clang_getCursorUnaryOperatorKind")
    getCursorUnaryOperatorKind :: proc(cursor: Cursor) -> UnaryOperatorKind ---

    @(link_name = "clang_CXRewriter_create")
    Rewriter_create :: proc(TU: TranslationUnit) -> Rewriter ---

    @(link_name = "clang_CXRewriter_insertTextBefore")
    Rewriter_insertTextBefore :: proc(Rew: Rewriter, Loc: SourceLocation, Insert: cstring) ---

    @(link_name = "clang_CXRewriter_replaceText")
    Rewriter_replaceText :: proc(Rew: Rewriter, ToBeReplaced: SourceRange, Replacement: cstring) ---

    @(link_name = "clang_CXRewriter_removeText")
    Rewriter_removeText :: proc(Rew: Rewriter, ToBeRemoved: SourceRange) ---

    @(link_name = "clang_CXRewriter_overwriteChangedFiles")
    Rewriter_overwriteChangedFiles :: proc(Rew: Rewriter) -> i32 ---

    @(link_name = "clang_CXRewriter_writeMainFileToStdOut")
    Rewriter_writeMainFileToStdOut :: proc(Rew: Rewriter) ---

    @(link_name = "clang_CXRewriter_dispose")
    Rewriter_dispose :: proc(Rew: Rewriter) ---

}

when (ODIN_OS == .Windows) {

UnsavedFile :: struct {
    Filename: cstring,
    Contents: cstring,
    Length: u32,
}
TUResourceUsageEntry :: struct {
    kind: TUResourceUsageKind,
    amount: u32,
}
time_t :: i32

} else {

UnsavedFile :: struct {
    Filename: cstring,
    Contents: cstring,
    Length: u64,
}
TUResourceUsageEntry :: struct {
    kind: TUResourceUsageKind,
    amount: u64,
}
time_t :: i64

}

