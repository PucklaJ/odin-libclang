//+build amd64, arm64
package clang

VirtualFileOverlay :: rawptr
ModuleMapDescriptor :: rawptr
CompilationDatabase :: rawptr
CompileCommands :: rawptr
CompileCommand :: rawptr
CompilationDatabase_Error :: enum u32 {CXCompilationDatabase_NoError = 0, CXCompilationDatabase_CanNotLoadDatabase = 1, }
DiagnosticSeverity :: enum u32 {CXDiagnostic_Ignored = 0, CXDiagnostic_Note = 1, CXDiagnostic_Warning = 2, CXDiagnostic_Error = 3, CXDiagnostic_Fatal = 4, }
Diagnostic :: rawptr
DiagnosticSet :: rawptr
LoadDiag_Error :: enum u32 {CXLoadDiag_None = 0, CXLoadDiag_Unknown = 1, CXLoadDiag_CannotLoad = 2, CXLoadDiag_InvalidFile = 3, }
DiagnosticDisplayOptions :: enum u32 {CXDiagnostic_DisplaySourceLocation = 1, CXDiagnostic_DisplayColumn = 2, CXDiagnostic_DisplaySourceRanges = 4, CXDiagnostic_DisplayOption = 8, CXDiagnostic_DisplayCategoryId = 16, CXDiagnostic_DisplayCategoryName = 32, }
ErrorCode :: enum u32 {CXError_Success = 0, CXError_Failure = 1, CXError_Crashed = 2, CXError_InvalidArguments = 3, CXError_ASTReadError = 4, }
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
CommentKind :: enum u32 {CXComment_Null = 0, CXComment_Text = 1, CXComment_InlineCommand = 2, CXComment_HTMLStartTag = 3, CXComment_HTMLEndTag = 4, CXComment_Paragraph = 5, CXComment_BlockCommand = 6, CXComment_ParamCommand = 7, CXComment_TParamCommand = 8, CXComment_VerbatimBlockCommand = 9, CXComment_VerbatimBlockLine = 10, CXComment_VerbatimLine = 11, CXComment_FullComment = 12, }
CommentInlineCommandRenderKind :: enum u32 {CXCommentInlineCommandRenderKind_Normal = 0, CXCommentInlineCommandRenderKind_Bold = 1, CXCommentInlineCommandRenderKind_Monospaced = 2, CXCommentInlineCommandRenderKind_Emphasized = 3, CXCommentInlineCommandRenderKind_Anchor = 4, }
CommentParamPassDirection :: enum u32 {CXCommentParamPassDirection_In = 0, CXCommentParamPassDirection_Out = 1, CXCommentParamPassDirection_InOut = 2, }
APISet :: rawptr
Index :: rawptr
TargetInfo :: rawptr
TranslationUnit :: rawptr
ClientData :: rawptr
AvailabilityKind :: enum u32 {CXAvailability_Available = 0, CXAvailability_Deprecated = 1, CXAvailability_NotAvailable = 2, CXAvailability_NotAccessible = 3, }
Version :: struct {
    Major: i32,
    Minor: i32,
    Subminor: i32,
}
Cursor_ExceptionSpecificationKind :: enum u32 {CXCursor_ExceptionSpecificationKind_None = 0, CXCursor_ExceptionSpecificationKind_DynamicNone = 1, CXCursor_ExceptionSpecificationKind_Dynamic = 2, CXCursor_ExceptionSpecificationKind_MSAny = 3, CXCursor_ExceptionSpecificationKind_BasicNoexcept = 4, CXCursor_ExceptionSpecificationKind_ComputedNoexcept = 5, CXCursor_ExceptionSpecificationKind_Unevaluated = 6, CXCursor_ExceptionSpecificationKind_Uninstantiated = 7, CXCursor_ExceptionSpecificationKind_Unparsed = 8, CXCursor_ExceptionSpecificationKind_NoThrow = 9, }
Choice :: enum u32 {CXChoice_Default = 0, CXChoice_Enabled = 1, CXChoice_Disabled = 2, }
GlobalOptFlags :: enum u32 {CXGlobalOpt_None = 0, CXGlobalOpt_ThreadBackgroundPriorityForIndexing = 1, CXGlobalOpt_ThreadBackgroundPriorityForEditing = 2, CXGlobalOpt_ThreadBackgroundPriorityForAll = 3, }
TranslationUnit_Flags :: enum u32 {CXTranslationUnit_None = 0, CXTranslationUnit_DetailedPreprocessingRecord = 1, CXTranslationUnit_Incomplete = 2, CXTranslationUnit_PrecompiledPreamble = 4, CXTranslationUnit_CacheCompletionResults = 8, CXTranslationUnit_ForSerialization = 16, CXTranslationUnit_CXXChainedPCH = 32, CXTranslationUnit_SkipFunctionBodies = 64, CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = 128, CXTranslationUnit_CreatePreambleOnFirstParse = 256, CXTranslationUnit_KeepGoing = 512, CXTranslationUnit_SingleFileParse = 1024, CXTranslationUnit_LimitSkipFunctionBodiesToPreamble = 2048, CXTranslationUnit_IncludeAttributedTypes = 4096, CXTranslationUnit_VisitImplicitAttributes = 8192, CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles = 16384, CXTranslationUnit_RetainExcludedConditionalBlocks = 32768, }
SaveTranslationUnit_Flags :: enum u32 {CXSaveTranslationUnit_None = 0, }
SaveError :: enum u32 {CXSaveError_None = 0, CXSaveError_Unknown = 1, CXSaveError_TranslationErrors = 2, CXSaveError_InvalidTU = 3, }
Reparse_Flags :: enum u32 {CXReparse_None = 0, }
TUResourceUsageKind :: enum u32 {CXTUResourceUsage_AST = 1, CXTUResourceUsage_Identifiers = 2, CXTUResourceUsage_Selectors = 3, CXTUResourceUsage_GlobalCompletionResults = 4, CXTUResourceUsage_SourceManagerContentCache = 5, CXTUResourceUsage_AST_SideTables = 6, CXTUResourceUsage_SourceManager_Membuffer_Malloc = 7, CXTUResourceUsage_SourceManager_Membuffer_MMap = 8, CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc = 9, CXTUResourceUsage_ExternalASTSource_Membuffer_MMap = 10, CXTUResourceUsage_Preprocessor = 11, CXTUResourceUsage_PreprocessingRecord = 12, CXTUResourceUsage_SourceManager_DataStructures = 13, CXTUResourceUsage_Preprocessor_HeaderSearch = 14, CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN = 1, CXTUResourceUsage_MEMORY_IN_BYTES_END = 14, CXTUResourceUsage_First = 1, CXTUResourceUsage_Last = 14, }
TUResourceUsage :: struct {
    data: rawptr,
    numEntries: u32,
    entries: [^]TUResourceUsageEntry,
}
CursorKind :: enum u32 {CXCursor_UnexposedDecl = 1, CXCursor_StructDecl = 2, CXCursor_UnionDecl = 3, CXCursor_ClassDecl = 4, CXCursor_EnumDecl = 5, CXCursor_FieldDecl = 6, CXCursor_EnumConstantDecl = 7, CXCursor_FunctionDecl = 8, CXCursor_VarDecl = 9, CXCursor_ParmDecl = 10, CXCursor_ObjCInterfaceDecl = 11, CXCursor_ObjCCategoryDecl = 12, CXCursor_ObjCProtocolDecl = 13, CXCursor_ObjCPropertyDecl = 14, CXCursor_ObjCIvarDecl = 15, CXCursor_ObjCInstanceMethodDecl = 16, CXCursor_ObjCClassMethodDecl = 17, CXCursor_ObjCImplementationDecl = 18, CXCursor_ObjCCategoryImplDecl = 19, CXCursor_TypedefDecl = 20, CXCursor_CXXMethod = 21, CXCursor_Namespace = 22, CXCursor_LinkageSpec = 23, CXCursor_Constructor = 24, CXCursor_Destructor = 25, CXCursor_ConversionFunction = 26, CXCursor_TemplateTypeParameter = 27, CXCursor_NonTypeTemplateParameter = 28, CXCursor_TemplateTemplateParameter = 29, CXCursor_FunctionTemplate = 30, CXCursor_ClassTemplate = 31, CXCursor_ClassTemplatePartialSpecialization = 32, CXCursor_NamespaceAlias = 33, CXCursor_UsingDirective = 34, CXCursor_UsingDeclaration = 35, CXCursor_TypeAliasDecl = 36, CXCursor_ObjCSynthesizeDecl = 37, CXCursor_ObjCDynamicDecl = 38, CXCursor_CXXAccessSpecifier = 39, CXCursor_FirstDecl = 1, CXCursor_LastDecl = 39, CXCursor_FirstRef = 40, CXCursor_ObjCSuperClassRef = 40, CXCursor_ObjCProtocolRef = 41, CXCursor_ObjCClassRef = 42, CXCursor_TypeRef = 43, CXCursor_CXXBaseSpecifier = 44, CXCursor_TemplateRef = 45, CXCursor_NamespaceRef = 46, CXCursor_MemberRef = 47, CXCursor_LabelRef = 48, CXCursor_OverloadedDeclRef = 49, CXCursor_VariableRef = 50, CXCursor_LastRef = 50, CXCursor_FirstInvalid = 70, CXCursor_InvalidFile = 70, CXCursor_NoDeclFound = 71, CXCursor_NotImplemented = 72, CXCursor_InvalidCode = 73, CXCursor_LastInvalid = 73, CXCursor_FirstExpr = 100, CXCursor_UnexposedExpr = 100, CXCursor_DeclRefExpr = 101, CXCursor_MemberRefExpr = 102, CXCursor_CallExpr = 103, CXCursor_ObjCMessageExpr = 104, CXCursor_BlockExpr = 105, CXCursor_IntegerLiteral = 106, CXCursor_FloatingLiteral = 107, CXCursor_ImaginaryLiteral = 108, CXCursor_StringLiteral = 109, CXCursor_CharacterLiteral = 110, CXCursor_ParenExpr = 111, CXCursor_UnaryOperator = 112, CXCursor_ArraySubscriptExpr = 113, CXCursor_BinaryOperator = 114, CXCursor_CompoundAssignOperator = 115, CXCursor_ConditionalOperator = 116, CXCursor_CStyleCastExpr = 117, CXCursor_CompoundLiteralExpr = 118, CXCursor_InitListExpr = 119, CXCursor_AddrLabelExpr = 120, CXCursor_StmtExpr = 121, CXCursor_GenericSelectionExpr = 122, CXCursor_GNUNullExpr = 123, CXCursor_CXXStaticCastExpr = 124, CXCursor_CXXDynamicCastExpr = 125, CXCursor_CXXReinterpretCastExpr = 126, CXCursor_CXXConstCastExpr = 127, CXCursor_CXXFunctionalCastExpr = 128, CXCursor_CXXTypeidExpr = 129, CXCursor_CXXBoolLiteralExpr = 130, CXCursor_CXXNullPtrLiteralExpr = 131, CXCursor_CXXThisExpr = 132, CXCursor_CXXThrowExpr = 133, CXCursor_CXXNewExpr = 134, CXCursor_CXXDeleteExpr = 135, CXCursor_UnaryExpr = 136, CXCursor_ObjCStringLiteral = 137, CXCursor_ObjCEncodeExpr = 138, CXCursor_ObjCSelectorExpr = 139, CXCursor_ObjCProtocolExpr = 140, CXCursor_ObjCBridgedCastExpr = 141, CXCursor_PackExpansionExpr = 142, CXCursor_SizeOfPackExpr = 143, CXCursor_LambdaExpr = 144, CXCursor_ObjCBoolLiteralExpr = 145, CXCursor_ObjCSelfExpr = 146, CXCursor_OMPArraySectionExpr = 147, CXCursor_ObjCAvailabilityCheckExpr = 148, CXCursor_FixedPointLiteral = 149, CXCursor_OMPArrayShapingExpr = 150, CXCursor_OMPIteratorExpr = 151, CXCursor_CXXAddrspaceCastExpr = 152, CXCursor_ConceptSpecializationExpr = 153, CXCursor_RequiresExpr = 154, CXCursor_CXXParenListInitExpr = 155, CXCursor_LastExpr = 155, CXCursor_FirstStmt = 200, CXCursor_UnexposedStmt = 200, CXCursor_LabelStmt = 201, CXCursor_CompoundStmt = 202, CXCursor_CaseStmt = 203, CXCursor_DefaultStmt = 204, CXCursor_IfStmt = 205, CXCursor_SwitchStmt = 206, CXCursor_WhileStmt = 207, CXCursor_DoStmt = 208, CXCursor_ForStmt = 209, CXCursor_GotoStmt = 210, CXCursor_IndirectGotoStmt = 211, CXCursor_ContinueStmt = 212, CXCursor_BreakStmt = 213, CXCursor_ReturnStmt = 214, CXCursor_GCCAsmStmt = 215, CXCursor_AsmStmt = 215, CXCursor_ObjCAtTryStmt = 216, CXCursor_ObjCAtCatchStmt = 217, CXCursor_ObjCAtFinallyStmt = 218, CXCursor_ObjCAtThrowStmt = 219, CXCursor_ObjCAtSynchronizedStmt = 220, CXCursor_ObjCAutoreleasePoolStmt = 221, CXCursor_ObjCForCollectionStmt = 222, CXCursor_CXXCatchStmt = 223, CXCursor_CXXTryStmt = 224, CXCursor_CXXForRangeStmt = 225, CXCursor_SEHTryStmt = 226, CXCursor_SEHExceptStmt = 227, CXCursor_SEHFinallyStmt = 228, CXCursor_MSAsmStmt = 229, CXCursor_NullStmt = 230, CXCursor_DeclStmt = 231, CXCursor_OMPParallelDirective = 232, CXCursor_OMPSimdDirective = 233, CXCursor_OMPForDirective = 234, CXCursor_OMPSectionsDirective = 235, CXCursor_OMPSectionDirective = 236, CXCursor_OMPSingleDirective = 237, CXCursor_OMPParallelForDirective = 238, CXCursor_OMPParallelSectionsDirective = 239, CXCursor_OMPTaskDirective = 240, CXCursor_OMPMasterDirective = 241, CXCursor_OMPCriticalDirective = 242, CXCursor_OMPTaskyieldDirective = 243, CXCursor_OMPBarrierDirective = 244, CXCursor_OMPTaskwaitDirective = 245, CXCursor_OMPFlushDirective = 246, CXCursor_SEHLeaveStmt = 247, CXCursor_OMPOrderedDirective = 248, CXCursor_OMPAtomicDirective = 249, CXCursor_OMPForSimdDirective = 250, CXCursor_OMPParallelForSimdDirective = 251, CXCursor_OMPTargetDirective = 252, CXCursor_OMPTeamsDirective = 253, CXCursor_OMPTaskgroupDirective = 254, CXCursor_OMPCancellationPointDirective = 255, CXCursor_OMPCancelDirective = 256, CXCursor_OMPTargetDataDirective = 257, CXCursor_OMPTaskLoopDirective = 258, CXCursor_OMPTaskLoopSimdDirective = 259, CXCursor_OMPDistributeDirective = 260, CXCursor_OMPTargetEnterDataDirective = 261, CXCursor_OMPTargetExitDataDirective = 262, CXCursor_OMPTargetParallelDirective = 263, CXCursor_OMPTargetParallelForDirective = 264, CXCursor_OMPTargetUpdateDirective = 265, CXCursor_OMPDistributeParallelForDirective = 266, CXCursor_OMPDistributeParallelForSimdDirective = 267, CXCursor_OMPDistributeSimdDirective = 268, CXCursor_OMPTargetParallelForSimdDirective = 269, CXCursor_OMPTargetSimdDirective = 270, CXCursor_OMPTeamsDistributeDirective = 271, CXCursor_OMPTeamsDistributeSimdDirective = 272, CXCursor_OMPTeamsDistributeParallelForSimdDirective = 273, CXCursor_OMPTeamsDistributeParallelForDirective = 274, CXCursor_OMPTargetTeamsDirective = 275, CXCursor_OMPTargetTeamsDistributeDirective = 276, CXCursor_OMPTargetTeamsDistributeParallelForDirective = 277, CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective = 278, CXCursor_OMPTargetTeamsDistributeSimdDirective = 279, CXCursor_BuiltinBitCastExpr = 280, CXCursor_OMPMasterTaskLoopDirective = 281, CXCursor_OMPParallelMasterTaskLoopDirective = 282, CXCursor_OMPMasterTaskLoopSimdDirective = 283, CXCursor_OMPParallelMasterTaskLoopSimdDirective = 284, CXCursor_OMPParallelMasterDirective = 285, CXCursor_OMPDepobjDirective = 286, CXCursor_OMPScanDirective = 287, CXCursor_OMPTileDirective = 288, CXCursor_OMPCanonicalLoop = 289, CXCursor_OMPInteropDirective = 290, CXCursor_OMPDispatchDirective = 291, CXCursor_OMPMaskedDirective = 292, CXCursor_OMPUnrollDirective = 293, CXCursor_OMPMetaDirective = 294, CXCursor_OMPGenericLoopDirective = 295, CXCursor_OMPTeamsGenericLoopDirective = 296, CXCursor_OMPTargetTeamsGenericLoopDirective = 297, CXCursor_OMPParallelGenericLoopDirective = 298, CXCursor_OMPTargetParallelGenericLoopDirective = 299, CXCursor_OMPParallelMaskedDirective = 300, CXCursor_OMPMaskedTaskLoopDirective = 301, CXCursor_OMPMaskedTaskLoopSimdDirective = 302, CXCursor_OMPParallelMaskedTaskLoopDirective = 303, CXCursor_OMPParallelMaskedTaskLoopSimdDirective = 304, CXCursor_OMPErrorDirective = 305, CXCursor_OMPScopeDirective = 306, CXCursor_LastStmt = 306, CXCursor_TranslationUnit = 350, CXCursor_FirstAttr = 400, CXCursor_UnexposedAttr = 400, CXCursor_IBActionAttr = 401, CXCursor_IBOutletAttr = 402, CXCursor_IBOutletCollectionAttr = 403, CXCursor_CXXFinalAttr = 404, CXCursor_CXXOverrideAttr = 405, CXCursor_AnnotateAttr = 406, CXCursor_AsmLabelAttr = 407, CXCursor_PackedAttr = 408, CXCursor_PureAttr = 409, CXCursor_ConstAttr = 410, CXCursor_NoDuplicateAttr = 411, CXCursor_CUDAConstantAttr = 412, CXCursor_CUDADeviceAttr = 413, CXCursor_CUDAGlobalAttr = 414, CXCursor_CUDAHostAttr = 415, CXCursor_CUDASharedAttr = 416, CXCursor_VisibilityAttr = 417, CXCursor_DLLExport = 418, CXCursor_DLLImport = 419, CXCursor_NSReturnsRetained = 420, CXCursor_NSReturnsNotRetained = 421, CXCursor_NSReturnsAutoreleased = 422, CXCursor_NSConsumesSelf = 423, CXCursor_NSConsumed = 424, CXCursor_ObjCException = 425, CXCursor_ObjCNSObject = 426, CXCursor_ObjCIndependentClass = 427, CXCursor_ObjCPreciseLifetime = 428, CXCursor_ObjCReturnsInnerPointer = 429, CXCursor_ObjCRequiresSuper = 430, CXCursor_ObjCRootClass = 431, CXCursor_ObjCSubclassingRestricted = 432, CXCursor_ObjCExplicitProtocolImpl = 433, CXCursor_ObjCDesignatedInitializer = 434, CXCursor_ObjCRuntimeVisible = 435, CXCursor_ObjCBoxable = 436, CXCursor_FlagEnum = 437, CXCursor_ConvergentAttr = 438, CXCursor_WarnUnusedAttr = 439, CXCursor_WarnUnusedResultAttr = 440, CXCursor_AlignedAttr = 441, CXCursor_LastAttr = 441, CXCursor_PreprocessingDirective = 500, CXCursor_MacroDefinition = 501, CXCursor_MacroExpansion = 502, CXCursor_MacroInstantiation = 502, CXCursor_InclusionDirective = 503, CXCursor_FirstPreprocessing = 500, CXCursor_LastPreprocessing = 503, CXCursor_ModuleImportDecl = 600, CXCursor_TypeAliasTemplateDecl = 601, CXCursor_StaticAssert = 602, CXCursor_FriendDecl = 603, CXCursor_ConceptDecl = 604, CXCursor_FirstExtraDecl = 600, CXCursor_LastExtraDecl = 604, CXCursor_OverloadCandidate = 700, }
Cursor :: struct {
    kind: CursorKind,
    xdata: i32,
    data: [3]rawptr,
}
LinkageKind :: enum u32 {CXLinkage_Invalid = 0, CXLinkage_NoLinkage = 1, CXLinkage_Internal = 2, CXLinkage_UniqueExternal = 3, CXLinkage_External = 4, }
VisibilityKind :: enum u32 {CXVisibility_Invalid = 0, CXVisibility_Hidden = 1, CXVisibility_Protected = 2, CXVisibility_Default = 3, }
PlatformAvailability :: struct {
    Platform: String,
    Introduced: Version,
    Deprecated: Version,
    Obsoleted: Version,
    Unavailable: i32,
    Message: String,
}
LanguageKind :: enum u32 {CXLanguage_Invalid = 0, CXLanguage_C = 1, CXLanguage_ObjC = 2, CXLanguage_CPlusPlus = 3, }
TLSKind :: enum u32 {CXTLS_None = 0, CXTLS_Dynamic = 1, CXTLS_Static = 2, }
CursorSet :: rawptr
TypeKind :: enum u32 {CXType_Invalid = 0, CXType_Unexposed = 1, CXType_Void = 2, CXType_Bool = 3, CXType_Char_U = 4, CXType_UChar = 5, CXType_Char16 = 6, CXType_Char32 = 7, CXType_UShort = 8, CXType_UInt = 9, CXType_ULong = 10, CXType_ULongLong = 11, CXType_UInt128 = 12, CXType_Char_S = 13, CXType_SChar = 14, CXType_WChar = 15, CXType_Short = 16, CXType_Int = 17, CXType_Long = 18, CXType_LongLong = 19, CXType_Int128 = 20, CXType_Float = 21, CXType_Double = 22, CXType_LongDouble = 23, CXType_NullPtr = 24, CXType_Overload = 25, CXType_Dependent = 26, CXType_ObjCId = 27, CXType_ObjCClass = 28, CXType_ObjCSel = 29, CXType_Float128 = 30, CXType_Half = 31, CXType_Float16 = 32, CXType_ShortAccum = 33, CXType_Accum = 34, CXType_LongAccum = 35, CXType_UShortAccum = 36, CXType_UAccum = 37, CXType_ULongAccum = 38, CXType_BFloat16 = 39, CXType_Ibm128 = 40, CXType_FirstBuiltin = 2, CXType_LastBuiltin = 40, CXType_Complex = 100, CXType_Pointer = 101, CXType_BlockPointer = 102, CXType_LValueReference = 103, CXType_RValueReference = 104, CXType_Record = 105, CXType_Enum = 106, CXType_Typedef = 107, CXType_ObjCInterface = 108, CXType_ObjCObjectPointer = 109, CXType_FunctionNoProto = 110, CXType_FunctionProto = 111, CXType_ConstantArray = 112, CXType_Vector = 113, CXType_IncompleteArray = 114, CXType_VariableArray = 115, CXType_DependentSizedArray = 116, CXType_MemberPointer = 117, CXType_Auto = 118, CXType_Elaborated = 119, CXType_Pipe = 120, CXType_OCLImage1dRO = 121, CXType_OCLImage1dArrayRO = 122, CXType_OCLImage1dBufferRO = 123, CXType_OCLImage2dRO = 124, CXType_OCLImage2dArrayRO = 125, CXType_OCLImage2dDepthRO = 126, CXType_OCLImage2dArrayDepthRO = 127, CXType_OCLImage2dMSAARO = 128, CXType_OCLImage2dArrayMSAARO = 129, CXType_OCLImage2dMSAADepthRO = 130, CXType_OCLImage2dArrayMSAADepthRO = 131, CXType_OCLImage3dRO = 132, CXType_OCLImage1dWO = 133, CXType_OCLImage1dArrayWO = 134, CXType_OCLImage1dBufferWO = 135, CXType_OCLImage2dWO = 136, CXType_OCLImage2dArrayWO = 137, CXType_OCLImage2dDepthWO = 138, CXType_OCLImage2dArrayDepthWO = 139, CXType_OCLImage2dMSAAWO = 140, CXType_OCLImage2dArrayMSAAWO = 141, CXType_OCLImage2dMSAADepthWO = 142, CXType_OCLImage2dArrayMSAADepthWO = 143, CXType_OCLImage3dWO = 144, CXType_OCLImage1dRW = 145, CXType_OCLImage1dArrayRW = 146, CXType_OCLImage1dBufferRW = 147, CXType_OCLImage2dRW = 148, CXType_OCLImage2dArrayRW = 149, CXType_OCLImage2dDepthRW = 150, CXType_OCLImage2dArrayDepthRW = 151, CXType_OCLImage2dMSAARW = 152, CXType_OCLImage2dArrayMSAARW = 153, CXType_OCLImage2dMSAADepthRW = 154, CXType_OCLImage2dArrayMSAADepthRW = 155, CXType_OCLImage3dRW = 156, CXType_OCLSampler = 157, CXType_OCLEvent = 158, CXType_OCLQueue = 159, CXType_OCLReserveID = 160, CXType_ObjCObject = 161, CXType_ObjCTypeParam = 162, CXType_Attributed = 163, CXType_OCLIntelSubgroupAVCMcePayload = 164, CXType_OCLIntelSubgroupAVCImePayload = 165, CXType_OCLIntelSubgroupAVCRefPayload = 166, CXType_OCLIntelSubgroupAVCSicPayload = 167, CXType_OCLIntelSubgroupAVCMceResult = 168, CXType_OCLIntelSubgroupAVCImeResult = 169, CXType_OCLIntelSubgroupAVCRefResult = 170, CXType_OCLIntelSubgroupAVCSicResult = 171, CXType_OCLIntelSubgroupAVCImeResultSingleReferenceStreamout = 172, CXType_OCLIntelSubgroupAVCImeResultDualReferenceStreamout = 173, CXType_OCLIntelSubgroupAVCImeSingleReferenceStreamin = 174, CXType_OCLIntelSubgroupAVCImeDualReferenceStreamin = 175, CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout = 172, CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout = 173, CXType_OCLIntelSubgroupAVCImeSingleRefStreamin = 174, CXType_OCLIntelSubgroupAVCImeDualRefStreamin = 175, CXType_ExtVector = 176, CXType_Atomic = 177, CXType_BTFTagAttributed = 178, }
CallingConv :: enum u32 {CXCallingConv_Default = 0, CXCallingConv_C = 1, CXCallingConv_X86StdCall = 2, CXCallingConv_X86FastCall = 3, CXCallingConv_X86ThisCall = 4, CXCallingConv_X86Pascal = 5, CXCallingConv_AAPCS = 6, CXCallingConv_AAPCS_VFP = 7, CXCallingConv_X86RegCall = 8, CXCallingConv_IntelOclBicc = 9, CXCallingConv_Win64 = 10, CXCallingConv_X86_64Win64 = 10, CXCallingConv_X86_64SysV = 11, CXCallingConv_X86VectorCall = 12, CXCallingConv_Swift = 13, CXCallingConv_PreserveMost = 14, CXCallingConv_PreserveAll = 15, CXCallingConv_AArch64VectorCall = 16, CXCallingConv_SwiftAsync = 17, CXCallingConv_AArch64SVEPCS = 18, CXCallingConv_M68kRTD = 19, CXCallingConv_Invalid = 100, CXCallingConv_Unexposed = 200, }
Type :: struct {
    kind: TypeKind,
    data: [2]rawptr,
}
TemplateArgumentKind :: enum u32 {CXTemplateArgumentKind_Null = 0, CXTemplateArgumentKind_Type = 1, CXTemplateArgumentKind_Declaration = 2, CXTemplateArgumentKind_NullPtr = 3, CXTemplateArgumentKind_Integral = 4, CXTemplateArgumentKind_Template = 5, CXTemplateArgumentKind_TemplateExpansion = 6, CXTemplateArgumentKind_Expression = 7, CXTemplateArgumentKind_Pack = 8, CXTemplateArgumentKind_Invalid = 9, }
TypeNullabilityKind :: enum u32 {CXTypeNullability_NonNull = 0, CXTypeNullability_Nullable = 1, CXTypeNullability_Unspecified = 2, CXTypeNullability_Invalid = 3, CXTypeNullability_NullableResult = 4, }
TypeLayoutError :: enum i32 {CXTypeLayoutError_Invalid = -1, CXTypeLayoutError_Incomplete = -2, CXTypeLayoutError_Dependent = -3, CXTypeLayoutError_NotConstantSize = -4, CXTypeLayoutError_InvalidFieldName = -5, CXTypeLayoutError_Undeduced = -6, }
RefQualifierKind :: enum u32 {CXRefQualifier_None = 0, CXRefQualifier_LValue = 1, CXRefQualifier_RValue = 2, }
CX_CXXAccessSpecifier :: enum u32 {CX_CXXInvalidAccessSpecifier = 0, CX_CXXPublic = 1, CX_CXXProtected = 2, CX_CXXPrivate = 3, }
CX_StorageClass :: enum u32 {CX_SC_Invalid = 0, CX_SC_None = 1, CX_SC_Extern = 2, CX_SC_Static = 3, CX_SC_PrivateExtern = 4, CX_SC_OpenCLWorkGroupLocal = 5, CX_SC_Auto = 6, CX_SC_Register = 7, }
ChildVisitResult :: enum u32 {CXChildVisit_Break = 0, CXChildVisit_Continue = 1, CXChildVisit_Recurse = 2, }
CursorVisitor :: #type proc "c" (cursor: Cursor, parent: Cursor, client_data: ClientData) -> ChildVisitResult
CursorVisitorBlock :: rawptr
PrintingPolicy :: rawptr
PrintingPolicyProperty :: enum u32 {CXPrintingPolicy_Indentation = 0, CXPrintingPolicy_SuppressSpecifiers = 1, CXPrintingPolicy_SuppressTagKeyword = 2, CXPrintingPolicy_IncludeTagDefinition = 3, CXPrintingPolicy_SuppressScope = 4, CXPrintingPolicy_SuppressUnwrittenScope = 5, CXPrintingPolicy_SuppressInitializers = 6, CXPrintingPolicy_ConstantArraySizeAsWritten = 7, CXPrintingPolicy_AnonymousTagLocations = 8, CXPrintingPolicy_SuppressStrongLifetime = 9, CXPrintingPolicy_SuppressLifetimeQualifiers = 10, CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors = 11, CXPrintingPolicy_Bool = 12, CXPrintingPolicy_Restrict = 13, CXPrintingPolicy_Alignof = 14, CXPrintingPolicy_UnderscoreAlignof = 15, CXPrintingPolicy_UseVoidForZeroParams = 16, CXPrintingPolicy_TerseOutput = 17, CXPrintingPolicy_PolishForDeclaration = 18, CXPrintingPolicy_Half = 19, CXPrintingPolicy_MSWChar = 20, CXPrintingPolicy_IncludeNewlines = 21, CXPrintingPolicy_MSVCFormatting = 22, CXPrintingPolicy_ConstantsAsWritten = 23, CXPrintingPolicy_SuppressImplicitBase = 24, CXPrintingPolicy_FullyQualifiedName = 25, CXPrintingPolicy_LastProperty = 25, }
ObjCPropertyAttrKind :: enum u32 {CXObjCPropertyAttr_noattr = 0, CXObjCPropertyAttr_readonly = 1, CXObjCPropertyAttr_getter = 2, CXObjCPropertyAttr_assign = 4, CXObjCPropertyAttr_readwrite = 8, CXObjCPropertyAttr_retain = 16, CXObjCPropertyAttr_copy = 32, CXObjCPropertyAttr_nonatomic = 64, CXObjCPropertyAttr_setter = 128, CXObjCPropertyAttr_atomic = 256, CXObjCPropertyAttr_weak = 512, CXObjCPropertyAttr_strong = 1024, CXObjCPropertyAttr_unsafe_unretained = 2048, CXObjCPropertyAttr_class = 4096, }
ObjCDeclQualifierKind :: enum u32 {CXObjCDeclQualifier_None = 0, CXObjCDeclQualifier_In = 1, CXObjCDeclQualifier_Inout = 2, CXObjCDeclQualifier_Out = 4, CXObjCDeclQualifier_Bycopy = 8, CXObjCDeclQualifier_Byref = 16, CXObjCDeclQualifier_Oneway = 32, }
Module :: rawptr
NameRefFlags :: enum u32 {CXNameRange_WantQualifier = 1, CXNameRange_WantTemplateArgs = 2, CXNameRange_WantSinglePiece = 4, }
TokenKind :: enum u32 {CXToken_Punctuation = 0, CXToken_Keyword = 1, CXToken_Identifier = 2, CXToken_Literal = 3, CXToken_Comment = 4, }
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
CompletionChunkKind :: enum u32 {CXCompletionChunk_Optional = 0, CXCompletionChunk_TypedText = 1, CXCompletionChunk_Text = 2, CXCompletionChunk_Placeholder = 3, CXCompletionChunk_Informative = 4, CXCompletionChunk_CurrentParameter = 5, CXCompletionChunk_LeftParen = 6, CXCompletionChunk_RightParen = 7, CXCompletionChunk_LeftBracket = 8, CXCompletionChunk_RightBracket = 9, CXCompletionChunk_LeftBrace = 10, CXCompletionChunk_RightBrace = 11, CXCompletionChunk_LeftAngle = 12, CXCompletionChunk_RightAngle = 13, CXCompletionChunk_Comma = 14, CXCompletionChunk_ResultType = 15, CXCompletionChunk_Colon = 16, CXCompletionChunk_SemiColon = 17, CXCompletionChunk_Equal = 18, CXCompletionChunk_HorizontalSpace = 19, CXCompletionChunk_VerticalSpace = 20, }
CodeCompleteResults :: struct {
    Results: [^]CompletionResult,
    NumResults: u32,
}
CodeComplete_Flags :: enum u32 {CXCodeComplete_IncludeMacros = 1, CXCodeComplete_IncludeCodePatterns = 2, CXCodeComplete_IncludeBriefComments = 4, CXCodeComplete_SkipPreamble = 8, CXCodeComplete_IncludeCompletionsWithFixIts = 16, }
CompletionContext :: enum u32 {CXCompletionContext_Unexposed = 0, CXCompletionContext_AnyType = 1, CXCompletionContext_AnyValue = 2, CXCompletionContext_ObjCObjectValue = 4, CXCompletionContext_ObjCSelectorValue = 8, CXCompletionContext_CXXClassTypeValue = 16, CXCompletionContext_DotMemberAccess = 32, CXCompletionContext_ArrowMemberAccess = 64, CXCompletionContext_ObjCPropertyAccess = 128, CXCompletionContext_EnumTag = 256, CXCompletionContext_UnionTag = 512, CXCompletionContext_StructTag = 1024, CXCompletionContext_ClassTag = 2048, CXCompletionContext_Namespace = 4096, CXCompletionContext_NestedNameSpecifier = 8192, CXCompletionContext_ObjCInterface = 16384, CXCompletionContext_ObjCProtocol = 32768, CXCompletionContext_ObjCCategory = 65536, CXCompletionContext_ObjCInstanceMessage = 131072, CXCompletionContext_ObjCClassMessage = 262144, CXCompletionContext_ObjCSelectorName = 524288, CXCompletionContext_MacroName = 1048576, CXCompletionContext_NaturalLanguage = 2097152, CXCompletionContext_IncludedFile = 4194304, CXCompletionContext_Unknown = 8388607, }
InclusionVisitor :: #type proc "c" (included_file: File, inclusion_stack: ^SourceLocation, include_len: u32, client_data: ClientData)
EvalResultKind :: enum u32 {CXEval_Int = 1, CXEval_Float = 2, CXEval_ObjCStrLiteral = 3, CXEval_StrLiteral = 4, CXEval_CFStr = 5, CXEval_Other = 6, CXEval_UnExposed = 0, }
EvalResult :: rawptr
Remapping :: rawptr
VisitorResult :: enum u32 {CXVisit_Break = 0, CXVisit_Continue = 1, }
visit_func_ptr_anon_1 :: #type proc "c" (context_: rawptr, param1: Cursor, param2: SourceRange) -> VisitorResult
CursorAndRangeVisitor :: struct {
    context_: rawptr,
    visit: visit_func_ptr_anon_1,
}
Result :: enum u32 {CXResult_Success = 0, CXResult_Invalid = 1, CXResult_VisitBreak = 2, }
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
IdxEntityKind :: enum u32 {CXIdxEntity_Unexposed = 0, CXIdxEntity_Typedef = 1, CXIdxEntity_Function = 2, CXIdxEntity_Variable = 3, CXIdxEntity_Field = 4, CXIdxEntity_EnumConstant = 5, CXIdxEntity_ObjCClass = 6, CXIdxEntity_ObjCProtocol = 7, CXIdxEntity_ObjCCategory = 8, CXIdxEntity_ObjCInstanceMethod = 9, CXIdxEntity_ObjCClassMethod = 10, CXIdxEntity_ObjCProperty = 11, CXIdxEntity_ObjCIvar = 12, CXIdxEntity_Enum = 13, CXIdxEntity_Struct = 14, CXIdxEntity_Union = 15, CXIdxEntity_CXXClass = 16, CXIdxEntity_CXXNamespace = 17, CXIdxEntity_CXXNamespaceAlias = 18, CXIdxEntity_CXXStaticVariable = 19, CXIdxEntity_CXXStaticMethod = 20, CXIdxEntity_CXXInstanceMethod = 21, CXIdxEntity_CXXConstructor = 22, CXIdxEntity_CXXDestructor = 23, CXIdxEntity_CXXConversionFunction = 24, CXIdxEntity_CXXTypeAlias = 25, CXIdxEntity_CXXInterface = 26, CXIdxEntity_CXXConcept = 27, }
IdxEntityLanguage :: enum u32 {CXIdxEntityLang_None = 0, CXIdxEntityLang_C = 1, CXIdxEntityLang_ObjC = 2, CXIdxEntityLang_CXX = 3, CXIdxEntityLang_Swift = 4, }
IdxEntityCXXTemplateKind :: enum u32 {CXIdxEntity_NonTemplate = 0, CXIdxEntity_Template = 1, CXIdxEntity_TemplatePartialSpecialization = 2, CXIdxEntity_TemplateSpecialization = 3, }
IdxAttrKind :: enum u32 {CXIdxAttr_Unexposed = 0, CXIdxAttr_IBAction = 1, CXIdxAttr_IBOutlet = 2, CXIdxAttr_IBOutletCollection = 3, }
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
IdxDeclInfoFlags :: enum u32 {CXIdxDeclFlag_Skipped = 1, }
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
IdxObjCContainerKind :: enum u32 {CXIdxObjCContainer_ForwardRef = 0, CXIdxObjCContainer_Interface = 1, CXIdxObjCContainer_Implementation = 2, }
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
IdxEntityRefKind :: enum u32 {CXIdxEntityRef_Direct = 1, CXIdxEntityRef_Implicit = 2, }
SymbolRole :: enum u32 {CXSymbolRole_None = 0, CXSymbolRole_Declaration = 1, CXSymbolRole_Definition = 2, CXSymbolRole_Reference = 4, CXSymbolRole_Read = 8, CXSymbolRole_Write = 16, CXSymbolRole_Call = 32, CXSymbolRole_Dynamic = 64, CXSymbolRole_AddressOf = 128, CXSymbolRole_Implicit = 256, }
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
IndexOptFlags :: enum u32 {CXIndexOpt_None = 0, CXIndexOpt_SuppressRedundantRefs = 1, CXIndexOpt_IndexFunctionLocalSymbols = 2, CXIndexOpt_IndexImplicitTemplateInstantiations = 4, CXIndexOpt_SuppressWarnings = 8, CXIndexOpt_SkipParsedBodiesInSession = 16, }
FieldVisitor :: #type proc "c" (C: Cursor, client_data: ClientData) -> VisitorResult
BinaryOperatorKind :: enum u32 {CXBinaryOperator_Invalid = 0, CXBinaryOperator_PtrMemD = 1, CXBinaryOperator_PtrMemI = 2, CXBinaryOperator_Mul = 3, CXBinaryOperator_Div = 4, CXBinaryOperator_Rem = 5, CXBinaryOperator_Add = 6, CXBinaryOperator_Sub = 7, CXBinaryOperator_Shl = 8, CXBinaryOperator_Shr = 9, CXBinaryOperator_Cmp = 10, CXBinaryOperator_LT = 11, CXBinaryOperator_GT = 12, CXBinaryOperator_LE = 13, CXBinaryOperator_GE = 14, CXBinaryOperator_EQ = 15, CXBinaryOperator_NE = 16, CXBinaryOperator_And = 17, CXBinaryOperator_Xor = 18, CXBinaryOperator_Or = 19, CXBinaryOperator_LAnd = 20, CXBinaryOperator_LOr = 21, CXBinaryOperator_Assign = 22, CXBinaryOperator_MulAssign = 23, CXBinaryOperator_DivAssign = 24, CXBinaryOperator_RemAssign = 25, CXBinaryOperator_AddAssign = 26, CXBinaryOperator_SubAssign = 27, CXBinaryOperator_ShlAssign = 28, CXBinaryOperator_ShrAssign = 29, CXBinaryOperator_AndAssign = 30, CXBinaryOperator_XorAssign = 31, CXBinaryOperator_OrAssign = 32, CXBinaryOperator_Comma = 33, }
UnaryOperatorKind :: enum u32 {CXUnaryOperator_Invalid = 0, CXUnaryOperator_PostInc = 1, CXUnaryOperator_PostDec = 2, CXUnaryOperator_PreInc = 3, CXUnaryOperator_PreDec = 4, CXUnaryOperator_AddrOf = 5, CXUnaryOperator_Deref = 6, CXUnaryOperator_Plus = 7, CXUnaryOperator_Minus = 8, CXUnaryOperator_Not = 9, CXUnaryOperator_LNot = 10, CXUnaryOperator_Real = 11, CXUnaryOperator_Imag = 12, CXUnaryOperator_Extension = 13, CXUnaryOperator_Coawait = 14, }
Rewriter :: rawptr
time_t :: __time_t

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
__time_t :: i32

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
__time_t :: i64

}

