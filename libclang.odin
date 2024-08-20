//+build amd64, arm64
package clang

CXVirtualFileOverlay :: rawptr
CXModuleMapDescriptor :: rawptr
CXCompilationDatabase :: rawptr
CXCompileCommands :: rawptr
CXCompileCommand :: rawptr
CXCompilationDatabase_Error :: enum u32 {CXCompilationDatabase_NoError = 0, CXCompilationDatabase_CanNotLoadDatabase = 1, }
CXDiagnosticSeverity :: enum u32 {CXDiagnostic_Ignored = 0, CXDiagnostic_Note = 1, CXDiagnostic_Warning = 2, CXDiagnostic_Error = 3, CXDiagnostic_Fatal = 4, }
CXDiagnostic :: rawptr
CXDiagnosticSet :: rawptr
CXLoadDiag_Error :: enum u32 {CXLoadDiag_None = 0, CXLoadDiag_Unknown = 1, CXLoadDiag_CannotLoad = 2, CXLoadDiag_InvalidFile = 3, }
CXDiagnosticDisplayOptions :: enum u32 {CXDiagnostic_DisplaySourceLocation = 1, CXDiagnostic_DisplayColumn = 2, CXDiagnostic_DisplaySourceRanges = 4, CXDiagnostic_DisplayOption = 8, CXDiagnostic_DisplayCategoryId = 16, CXDiagnostic_DisplayCategoryName = 32, }
CXErrorCode :: enum u32 {CXError_Success = 0, CXError_Failure = 1, CXError_Crashed = 2, CXError_InvalidArguments = 3, CXError_ASTReadError = 4, }
CXFile :: rawptr
CXFileUniqueID :: struct {
    data: [3]u64,
}
CXSourceLocation :: struct {
    ptr_data: [2]rawptr,
    int_data: u32,
}
CXSourceRange :: struct {
    ptr_data: [2]rawptr,
    begin_int_data: u32,
    end_int_data: u32,
}
CXSourceRangeList :: struct {
    count: u32,
    ranges: [^]CXSourceRange,
}
CXString :: struct {
    data: rawptr,
    private_flags: u32,
}
CXStringSet :: struct {
    Strings: [^]CXString,
    Count: u32,
}
CXComment :: struct {
    ASTNode: rawptr,
    TranslationUnit: CXTranslationUnit,
}
CXCommentKind :: enum u32 {CXComment_Null = 0, CXComment_Text = 1, CXComment_InlineCommand = 2, CXComment_HTMLStartTag = 3, CXComment_HTMLEndTag = 4, CXComment_Paragraph = 5, CXComment_BlockCommand = 6, CXComment_ParamCommand = 7, CXComment_TParamCommand = 8, CXComment_VerbatimBlockCommand = 9, CXComment_VerbatimBlockLine = 10, CXComment_VerbatimLine = 11, CXComment_FullComment = 12, }
CXCommentInlineCommandRenderKind :: enum u32 {CXCommentInlineCommandRenderKind_Normal = 0, CXCommentInlineCommandRenderKind_Bold = 1, CXCommentInlineCommandRenderKind_Monospaced = 2, CXCommentInlineCommandRenderKind_Emphasized = 3, CXCommentInlineCommandRenderKind_Anchor = 4, }
CXCommentParamPassDirection :: enum u32 {CXCommentParamPassDirection_In = 0, CXCommentParamPassDirection_Out = 1, CXCommentParamPassDirection_InOut = 2, }
CXAPISet :: rawptr
CXIndex :: rawptr
CXTargetInfo :: rawptr
CXTranslationUnit :: rawptr
CXClientData :: rawptr
CXAvailabilityKind :: enum u32 {CXAvailability_Available = 0, CXAvailability_Deprecated = 1, CXAvailability_NotAvailable = 2, CXAvailability_NotAccessible = 3, }
CXVersion :: struct {
    Major: i32,
    Minor: i32,
    Subminor: i32,
}
CXCursor_ExceptionSpecificationKind :: enum u32 {CXCursor_ExceptionSpecificationKind_None = 0, CXCursor_ExceptionSpecificationKind_DynamicNone = 1, CXCursor_ExceptionSpecificationKind_Dynamic = 2, CXCursor_ExceptionSpecificationKind_MSAny = 3, CXCursor_ExceptionSpecificationKind_BasicNoexcept = 4, CXCursor_ExceptionSpecificationKind_ComputedNoexcept = 5, CXCursor_ExceptionSpecificationKind_Unevaluated = 6, CXCursor_ExceptionSpecificationKind_Uninstantiated = 7, CXCursor_ExceptionSpecificationKind_Unparsed = 8, CXCursor_ExceptionSpecificationKind_NoThrow = 9, }
CXChoice :: enum u32 {CXChoice_Default = 0, CXChoice_Enabled = 1, CXChoice_Disabled = 2, }
CXGlobalOptFlags :: enum u32 {CXGlobalOpt_None = 0, CXGlobalOpt_ThreadBackgroundPriorityForIndexing = 1, CXGlobalOpt_ThreadBackgroundPriorityForEditing = 2, CXGlobalOpt_ThreadBackgroundPriorityForAll = 3, }
CXTranslationUnit_Flags :: enum u32 {CXTranslationUnit_None = 0, CXTranslationUnit_DetailedPreprocessingRecord = 1, CXTranslationUnit_Incomplete = 2, CXTranslationUnit_PrecompiledPreamble = 4, CXTranslationUnit_CacheCompletionResults = 8, CXTranslationUnit_ForSerialization = 16, CXTranslationUnit_CXXChainedPCH = 32, CXTranslationUnit_SkipFunctionBodies = 64, CXTranslationUnit_IncludeBriefCommentsInCodeCompletion = 128, CXTranslationUnit_CreatePreambleOnFirstParse = 256, CXTranslationUnit_KeepGoing = 512, CXTranslationUnit_SingleFileParse = 1024, CXTranslationUnit_LimitSkipFunctionBodiesToPreamble = 2048, CXTranslationUnit_IncludeAttributedTypes = 4096, CXTranslationUnit_VisitImplicitAttributes = 8192, CXTranslationUnit_IgnoreNonErrorsFromIncludedFiles = 16384, CXTranslationUnit_RetainExcludedConditionalBlocks = 32768, }
CXSaveTranslationUnit_Flags :: enum u32 {CXSaveTranslationUnit_None = 0, }
CXSaveError :: enum u32 {CXSaveError_None = 0, CXSaveError_Unknown = 1, CXSaveError_TranslationErrors = 2, CXSaveError_InvalidTU = 3, }
CXReparse_Flags :: enum u32 {CXReparse_None = 0, }
CXTUResourceUsageKind :: enum u32 {CXTUResourceUsage_AST = 1, CXTUResourceUsage_Identifiers = 2, CXTUResourceUsage_Selectors = 3, CXTUResourceUsage_GlobalCompletionResults = 4, CXTUResourceUsage_SourceManagerContentCache = 5, CXTUResourceUsage_AST_SideTables = 6, CXTUResourceUsage_SourceManager_Membuffer_Malloc = 7, CXTUResourceUsage_SourceManager_Membuffer_MMap = 8, CXTUResourceUsage_ExternalASTSource_Membuffer_Malloc = 9, CXTUResourceUsage_ExternalASTSource_Membuffer_MMap = 10, CXTUResourceUsage_Preprocessor = 11, CXTUResourceUsage_PreprocessingRecord = 12, CXTUResourceUsage_SourceManager_DataStructures = 13, CXTUResourceUsage_Preprocessor_HeaderSearch = 14, CXTUResourceUsage_MEMORY_IN_BYTES_BEGIN = 1, CXTUResourceUsage_MEMORY_IN_BYTES_END = 14, CXTUResourceUsage_First = 1, CXTUResourceUsage_Last = 14, }
CXTUResourceUsage :: struct {
    data: rawptr,
    numEntries: u32,
    entries: [^]CXTUResourceUsageEntry,
}
CXCursorKind :: enum u32 {CXCursor_UnexposedDecl = 1, CXCursor_StructDecl = 2, CXCursor_UnionDecl = 3, CXCursor_ClassDecl = 4, CXCursor_EnumDecl = 5, CXCursor_FieldDecl = 6, CXCursor_EnumConstantDecl = 7, CXCursor_FunctionDecl = 8, CXCursor_VarDecl = 9, CXCursor_ParmDecl = 10, CXCursor_ObjCInterfaceDecl = 11, CXCursor_ObjCCategoryDecl = 12, CXCursor_ObjCProtocolDecl = 13, CXCursor_ObjCPropertyDecl = 14, CXCursor_ObjCIvarDecl = 15, CXCursor_ObjCInstanceMethodDecl = 16, CXCursor_ObjCClassMethodDecl = 17, CXCursor_ObjCImplementationDecl = 18, CXCursor_ObjCCategoryImplDecl = 19, CXCursor_TypedefDecl = 20, CXCursor_CXXMethod = 21, CXCursor_Namespace = 22, CXCursor_LinkageSpec = 23, CXCursor_Constructor = 24, CXCursor_Destructor = 25, CXCursor_ConversionFunction = 26, CXCursor_TemplateTypeParameter = 27, CXCursor_NonTypeTemplateParameter = 28, CXCursor_TemplateTemplateParameter = 29, CXCursor_FunctionTemplate = 30, CXCursor_ClassTemplate = 31, CXCursor_ClassTemplatePartialSpecialization = 32, CXCursor_NamespaceAlias = 33, CXCursor_UsingDirective = 34, CXCursor_UsingDeclaration = 35, CXCursor_TypeAliasDecl = 36, CXCursor_ObjCSynthesizeDecl = 37, CXCursor_ObjCDynamicDecl = 38, CXCursor_CXXAccessSpecifier = 39, CXCursor_FirstDecl = 1, CXCursor_LastDecl = 39, CXCursor_FirstRef = 40, CXCursor_ObjCSuperClassRef = 40, CXCursor_ObjCProtocolRef = 41, CXCursor_ObjCClassRef = 42, CXCursor_TypeRef = 43, CXCursor_CXXBaseSpecifier = 44, CXCursor_TemplateRef = 45, CXCursor_NamespaceRef = 46, CXCursor_MemberRef = 47, CXCursor_LabelRef = 48, CXCursor_OverloadedDeclRef = 49, CXCursor_VariableRef = 50, CXCursor_LastRef = 50, CXCursor_FirstInvalid = 70, CXCursor_InvalidFile = 70, CXCursor_NoDeclFound = 71, CXCursor_NotImplemented = 72, CXCursor_InvalidCode = 73, CXCursor_LastInvalid = 73, CXCursor_FirstExpr = 100, CXCursor_UnexposedExpr = 100, CXCursor_DeclRefExpr = 101, CXCursor_MemberRefExpr = 102, CXCursor_CallExpr = 103, CXCursor_ObjCMessageExpr = 104, CXCursor_BlockExpr = 105, CXCursor_IntegerLiteral = 106, CXCursor_FloatingLiteral = 107, CXCursor_ImaginaryLiteral = 108, CXCursor_StringLiteral = 109, CXCursor_CharacterLiteral = 110, CXCursor_ParenExpr = 111, CXCursor_UnaryOperator = 112, CXCursor_ArraySubscriptExpr = 113, CXCursor_BinaryOperator = 114, CXCursor_CompoundAssignOperator = 115, CXCursor_ConditionalOperator = 116, CXCursor_CStyleCastExpr = 117, CXCursor_CompoundLiteralExpr = 118, CXCursor_InitListExpr = 119, CXCursor_AddrLabelExpr = 120, CXCursor_StmtExpr = 121, CXCursor_GenericSelectionExpr = 122, CXCursor_GNUNullExpr = 123, CXCursor_CXXStaticCastExpr = 124, CXCursor_CXXDynamicCastExpr = 125, CXCursor_CXXReinterpretCastExpr = 126, CXCursor_CXXConstCastExpr = 127, CXCursor_CXXFunctionalCastExpr = 128, CXCursor_CXXTypeidExpr = 129, CXCursor_CXXBoolLiteralExpr = 130, CXCursor_CXXNullPtrLiteralExpr = 131, CXCursor_CXXThisExpr = 132, CXCursor_CXXThrowExpr = 133, CXCursor_CXXNewExpr = 134, CXCursor_CXXDeleteExpr = 135, CXCursor_UnaryExpr = 136, CXCursor_ObjCStringLiteral = 137, CXCursor_ObjCEncodeExpr = 138, CXCursor_ObjCSelectorExpr = 139, CXCursor_ObjCProtocolExpr = 140, CXCursor_ObjCBridgedCastExpr = 141, CXCursor_PackExpansionExpr = 142, CXCursor_SizeOfPackExpr = 143, CXCursor_LambdaExpr = 144, CXCursor_ObjCBoolLiteralExpr = 145, CXCursor_ObjCSelfExpr = 146, CXCursor_OMPArraySectionExpr = 147, CXCursor_ObjCAvailabilityCheckExpr = 148, CXCursor_FixedPointLiteral = 149, CXCursor_OMPArrayShapingExpr = 150, CXCursor_OMPIteratorExpr = 151, CXCursor_CXXAddrspaceCastExpr = 152, CXCursor_ConceptSpecializationExpr = 153, CXCursor_RequiresExpr = 154, CXCursor_CXXParenListInitExpr = 155, CXCursor_LastExpr = 155, CXCursor_FirstStmt = 200, CXCursor_UnexposedStmt = 200, CXCursor_LabelStmt = 201, CXCursor_CompoundStmt = 202, CXCursor_CaseStmt = 203, CXCursor_DefaultStmt = 204, CXCursor_IfStmt = 205, CXCursor_SwitchStmt = 206, CXCursor_WhileStmt = 207, CXCursor_DoStmt = 208, CXCursor_ForStmt = 209, CXCursor_GotoStmt = 210, CXCursor_IndirectGotoStmt = 211, CXCursor_ContinueStmt = 212, CXCursor_BreakStmt = 213, CXCursor_ReturnStmt = 214, CXCursor_GCCAsmStmt = 215, CXCursor_AsmStmt = 215, CXCursor_ObjCAtTryStmt = 216, CXCursor_ObjCAtCatchStmt = 217, CXCursor_ObjCAtFinallyStmt = 218, CXCursor_ObjCAtThrowStmt = 219, CXCursor_ObjCAtSynchronizedStmt = 220, CXCursor_ObjCAutoreleasePoolStmt = 221, CXCursor_ObjCForCollectionStmt = 222, CXCursor_CXXCatchStmt = 223, CXCursor_CXXTryStmt = 224, CXCursor_CXXForRangeStmt = 225, CXCursor_SEHTryStmt = 226, CXCursor_SEHExceptStmt = 227, CXCursor_SEHFinallyStmt = 228, CXCursor_MSAsmStmt = 229, CXCursor_NullStmt = 230, CXCursor_DeclStmt = 231, CXCursor_OMPParallelDirective = 232, CXCursor_OMPSimdDirective = 233, CXCursor_OMPForDirective = 234, CXCursor_OMPSectionsDirective = 235, CXCursor_OMPSectionDirective = 236, CXCursor_OMPSingleDirective = 237, CXCursor_OMPParallelForDirective = 238, CXCursor_OMPParallelSectionsDirective = 239, CXCursor_OMPTaskDirective = 240, CXCursor_OMPMasterDirective = 241, CXCursor_OMPCriticalDirective = 242, CXCursor_OMPTaskyieldDirective = 243, CXCursor_OMPBarrierDirective = 244, CXCursor_OMPTaskwaitDirective = 245, CXCursor_OMPFlushDirective = 246, CXCursor_SEHLeaveStmt = 247, CXCursor_OMPOrderedDirective = 248, CXCursor_OMPAtomicDirective = 249, CXCursor_OMPForSimdDirective = 250, CXCursor_OMPParallelForSimdDirective = 251, CXCursor_OMPTargetDirective = 252, CXCursor_OMPTeamsDirective = 253, CXCursor_OMPTaskgroupDirective = 254, CXCursor_OMPCancellationPointDirective = 255, CXCursor_OMPCancelDirective = 256, CXCursor_OMPTargetDataDirective = 257, CXCursor_OMPTaskLoopDirective = 258, CXCursor_OMPTaskLoopSimdDirective = 259, CXCursor_OMPDistributeDirective = 260, CXCursor_OMPTargetEnterDataDirective = 261, CXCursor_OMPTargetExitDataDirective = 262, CXCursor_OMPTargetParallelDirective = 263, CXCursor_OMPTargetParallelForDirective = 264, CXCursor_OMPTargetUpdateDirective = 265, CXCursor_OMPDistributeParallelForDirective = 266, CXCursor_OMPDistributeParallelForSimdDirective = 267, CXCursor_OMPDistributeSimdDirective = 268, CXCursor_OMPTargetParallelForSimdDirective = 269, CXCursor_OMPTargetSimdDirective = 270, CXCursor_OMPTeamsDistributeDirective = 271, CXCursor_OMPTeamsDistributeSimdDirective = 272, CXCursor_OMPTeamsDistributeParallelForSimdDirective = 273, CXCursor_OMPTeamsDistributeParallelForDirective = 274, CXCursor_OMPTargetTeamsDirective = 275, CXCursor_OMPTargetTeamsDistributeDirective = 276, CXCursor_OMPTargetTeamsDistributeParallelForDirective = 277, CXCursor_OMPTargetTeamsDistributeParallelForSimdDirective = 278, CXCursor_OMPTargetTeamsDistributeSimdDirective = 279, CXCursor_BuiltinBitCastExpr = 280, CXCursor_OMPMasterTaskLoopDirective = 281, CXCursor_OMPParallelMasterTaskLoopDirective = 282, CXCursor_OMPMasterTaskLoopSimdDirective = 283, CXCursor_OMPParallelMasterTaskLoopSimdDirective = 284, CXCursor_OMPParallelMasterDirective = 285, CXCursor_OMPDepobjDirective = 286, CXCursor_OMPScanDirective = 287, CXCursor_OMPTileDirective = 288, CXCursor_OMPCanonicalLoop = 289, CXCursor_OMPInteropDirective = 290, CXCursor_OMPDispatchDirective = 291, CXCursor_OMPMaskedDirective = 292, CXCursor_OMPUnrollDirective = 293, CXCursor_OMPMetaDirective = 294, CXCursor_OMPGenericLoopDirective = 295, CXCursor_OMPTeamsGenericLoopDirective = 296, CXCursor_OMPTargetTeamsGenericLoopDirective = 297, CXCursor_OMPParallelGenericLoopDirective = 298, CXCursor_OMPTargetParallelGenericLoopDirective = 299, CXCursor_OMPParallelMaskedDirective = 300, CXCursor_OMPMaskedTaskLoopDirective = 301, CXCursor_OMPMaskedTaskLoopSimdDirective = 302, CXCursor_OMPParallelMaskedTaskLoopDirective = 303, CXCursor_OMPParallelMaskedTaskLoopSimdDirective = 304, CXCursor_OMPErrorDirective = 305, CXCursor_OMPScopeDirective = 306, CXCursor_LastStmt = 306, CXCursor_TranslationUnit = 350, CXCursor_FirstAttr = 400, CXCursor_UnexposedAttr = 400, CXCursor_IBActionAttr = 401, CXCursor_IBOutletAttr = 402, CXCursor_IBOutletCollectionAttr = 403, CXCursor_CXXFinalAttr = 404, CXCursor_CXXOverrideAttr = 405, CXCursor_AnnotateAttr = 406, CXCursor_AsmLabelAttr = 407, CXCursor_PackedAttr = 408, CXCursor_PureAttr = 409, CXCursor_ConstAttr = 410, CXCursor_NoDuplicateAttr = 411, CXCursor_CUDAConstantAttr = 412, CXCursor_CUDADeviceAttr = 413, CXCursor_CUDAGlobalAttr = 414, CXCursor_CUDAHostAttr = 415, CXCursor_CUDASharedAttr = 416, CXCursor_VisibilityAttr = 417, CXCursor_DLLExport = 418, CXCursor_DLLImport = 419, CXCursor_NSReturnsRetained = 420, CXCursor_NSReturnsNotRetained = 421, CXCursor_NSReturnsAutoreleased = 422, CXCursor_NSConsumesSelf = 423, CXCursor_NSConsumed = 424, CXCursor_ObjCException = 425, CXCursor_ObjCNSObject = 426, CXCursor_ObjCIndependentClass = 427, CXCursor_ObjCPreciseLifetime = 428, CXCursor_ObjCReturnsInnerPointer = 429, CXCursor_ObjCRequiresSuper = 430, CXCursor_ObjCRootClass = 431, CXCursor_ObjCSubclassingRestricted = 432, CXCursor_ObjCExplicitProtocolImpl = 433, CXCursor_ObjCDesignatedInitializer = 434, CXCursor_ObjCRuntimeVisible = 435, CXCursor_ObjCBoxable = 436, CXCursor_FlagEnum = 437, CXCursor_ConvergentAttr = 438, CXCursor_WarnUnusedAttr = 439, CXCursor_WarnUnusedResultAttr = 440, CXCursor_AlignedAttr = 441, CXCursor_LastAttr = 441, CXCursor_PreprocessingDirective = 500, CXCursor_MacroDefinition = 501, CXCursor_MacroExpansion = 502, CXCursor_MacroInstantiation = 502, CXCursor_InclusionDirective = 503, CXCursor_FirstPreprocessing = 500, CXCursor_LastPreprocessing = 503, CXCursor_ModuleImportDecl = 600, CXCursor_TypeAliasTemplateDecl = 601, CXCursor_StaticAssert = 602, CXCursor_FriendDecl = 603, CXCursor_ConceptDecl = 604, CXCursor_FirstExtraDecl = 600, CXCursor_LastExtraDecl = 604, CXCursor_OverloadCandidate = 700, }
CXCursor :: struct {
    kind: CXCursorKind,
    xdata: i32,
    data: [3]rawptr,
}
CXLinkageKind :: enum u32 {CXLinkage_Invalid = 0, CXLinkage_NoLinkage = 1, CXLinkage_Internal = 2, CXLinkage_UniqueExternal = 3, CXLinkage_External = 4, }
CXVisibilityKind :: enum u32 {CXVisibility_Invalid = 0, CXVisibility_Hidden = 1, CXVisibility_Protected = 2, CXVisibility_Default = 3, }
CXPlatformAvailability :: struct {
    Platform: CXString,
    Introduced: CXVersion,
    Deprecated: CXVersion,
    Obsoleted: CXVersion,
    Unavailable: i32,
    Message: CXString,
}
CXLanguageKind :: enum u32 {CXLanguage_Invalid = 0, CXLanguage_C = 1, CXLanguage_ObjC = 2, CXLanguage_CPlusPlus = 3, }
CXTLSKind :: enum u32 {CXTLS_None = 0, CXTLS_Dynamic = 1, CXTLS_Static = 2, }
CXCursorSet :: rawptr
CXTypeKind :: enum u32 {CXType_Invalid = 0, CXType_Unexposed = 1, CXType_Void = 2, CXType_Bool = 3, CXType_Char_U = 4, CXType_UChar = 5, CXType_Char16 = 6, CXType_Char32 = 7, CXType_UShort = 8, CXType_UInt = 9, CXType_ULong = 10, CXType_ULongLong = 11, CXType_UInt128 = 12, CXType_Char_S = 13, CXType_SChar = 14, CXType_WChar = 15, CXType_Short = 16, CXType_Int = 17, CXType_Long = 18, CXType_LongLong = 19, CXType_Int128 = 20, CXType_Float = 21, CXType_Double = 22, CXType_LongDouble = 23, CXType_NullPtr = 24, CXType_Overload = 25, CXType_Dependent = 26, CXType_ObjCId = 27, CXType_ObjCClass = 28, CXType_ObjCSel = 29, CXType_Float128 = 30, CXType_Half = 31, CXType_Float16 = 32, CXType_ShortAccum = 33, CXType_Accum = 34, CXType_LongAccum = 35, CXType_UShortAccum = 36, CXType_UAccum = 37, CXType_ULongAccum = 38, CXType_BFloat16 = 39, CXType_Ibm128 = 40, CXType_FirstBuiltin = 2, CXType_LastBuiltin = 40, CXType_Complex = 100, CXType_Pointer = 101, CXType_BlockPointer = 102, CXType_LValueReference = 103, CXType_RValueReference = 104, CXType_Record = 105, CXType_Enum = 106, CXType_Typedef = 107, CXType_ObjCInterface = 108, CXType_ObjCObjectPointer = 109, CXType_FunctionNoProto = 110, CXType_FunctionProto = 111, CXType_ConstantArray = 112, CXType_Vector = 113, CXType_IncompleteArray = 114, CXType_VariableArray = 115, CXType_DependentSizedArray = 116, CXType_MemberPointer = 117, CXType_Auto = 118, CXType_Elaborated = 119, CXType_Pipe = 120, CXType_OCLImage1dRO = 121, CXType_OCLImage1dArrayRO = 122, CXType_OCLImage1dBufferRO = 123, CXType_OCLImage2dRO = 124, CXType_OCLImage2dArrayRO = 125, CXType_OCLImage2dDepthRO = 126, CXType_OCLImage2dArrayDepthRO = 127, CXType_OCLImage2dMSAARO = 128, CXType_OCLImage2dArrayMSAARO = 129, CXType_OCLImage2dMSAADepthRO = 130, CXType_OCLImage2dArrayMSAADepthRO = 131, CXType_OCLImage3dRO = 132, CXType_OCLImage1dWO = 133, CXType_OCLImage1dArrayWO = 134, CXType_OCLImage1dBufferWO = 135, CXType_OCLImage2dWO = 136, CXType_OCLImage2dArrayWO = 137, CXType_OCLImage2dDepthWO = 138, CXType_OCLImage2dArrayDepthWO = 139, CXType_OCLImage2dMSAAWO = 140, CXType_OCLImage2dArrayMSAAWO = 141, CXType_OCLImage2dMSAADepthWO = 142, CXType_OCLImage2dArrayMSAADepthWO = 143, CXType_OCLImage3dWO = 144, CXType_OCLImage1dRW = 145, CXType_OCLImage1dArrayRW = 146, CXType_OCLImage1dBufferRW = 147, CXType_OCLImage2dRW = 148, CXType_OCLImage2dArrayRW = 149, CXType_OCLImage2dDepthRW = 150, CXType_OCLImage2dArrayDepthRW = 151, CXType_OCLImage2dMSAARW = 152, CXType_OCLImage2dArrayMSAARW = 153, CXType_OCLImage2dMSAADepthRW = 154, CXType_OCLImage2dArrayMSAADepthRW = 155, CXType_OCLImage3dRW = 156, CXType_OCLSampler = 157, CXType_OCLEvent = 158, CXType_OCLQueue = 159, CXType_OCLReserveID = 160, CXType_ObjCObject = 161, CXType_ObjCTypeParam = 162, CXType_Attributed = 163, CXType_OCLIntelSubgroupAVCMcePayload = 164, CXType_OCLIntelSubgroupAVCImePayload = 165, CXType_OCLIntelSubgroupAVCRefPayload = 166, CXType_OCLIntelSubgroupAVCSicPayload = 167, CXType_OCLIntelSubgroupAVCMceResult = 168, CXType_OCLIntelSubgroupAVCImeResult = 169, CXType_OCLIntelSubgroupAVCRefResult = 170, CXType_OCLIntelSubgroupAVCSicResult = 171, CXType_OCLIntelSubgroupAVCImeResultSingleReferenceStreamout = 172, CXType_OCLIntelSubgroupAVCImeResultDualReferenceStreamout = 173, CXType_OCLIntelSubgroupAVCImeSingleReferenceStreamin = 174, CXType_OCLIntelSubgroupAVCImeDualReferenceStreamin = 175, CXType_OCLIntelSubgroupAVCImeResultSingleRefStreamout = 172, CXType_OCLIntelSubgroupAVCImeResultDualRefStreamout = 173, CXType_OCLIntelSubgroupAVCImeSingleRefStreamin = 174, CXType_OCLIntelSubgroupAVCImeDualRefStreamin = 175, CXType_ExtVector = 176, CXType_Atomic = 177, CXType_BTFTagAttributed = 178, }
CXCallingConv :: enum u32 {CXCallingConv_Default = 0, CXCallingConv_C = 1, CXCallingConv_X86StdCall = 2, CXCallingConv_X86FastCall = 3, CXCallingConv_X86ThisCall = 4, CXCallingConv_X86Pascal = 5, CXCallingConv_AAPCS = 6, CXCallingConv_AAPCS_VFP = 7, CXCallingConv_X86RegCall = 8, CXCallingConv_IntelOclBicc = 9, CXCallingConv_Win64 = 10, CXCallingConv_X86_64Win64 = 10, CXCallingConv_X86_64SysV = 11, CXCallingConv_X86VectorCall = 12, CXCallingConv_Swift = 13, CXCallingConv_PreserveMost = 14, CXCallingConv_PreserveAll = 15, CXCallingConv_AArch64VectorCall = 16, CXCallingConv_SwiftAsync = 17, CXCallingConv_AArch64SVEPCS = 18, CXCallingConv_M68kRTD = 19, CXCallingConv_Invalid = 100, CXCallingConv_Unexposed = 200, }
CXType :: struct {
    kind: CXTypeKind,
    data: [2]rawptr,
}
CXTemplateArgumentKind :: enum u32 {CXTemplateArgumentKind_Null = 0, CXTemplateArgumentKind_Type = 1, CXTemplateArgumentKind_Declaration = 2, CXTemplateArgumentKind_NullPtr = 3, CXTemplateArgumentKind_Integral = 4, CXTemplateArgumentKind_Template = 5, CXTemplateArgumentKind_TemplateExpansion = 6, CXTemplateArgumentKind_Expression = 7, CXTemplateArgumentKind_Pack = 8, CXTemplateArgumentKind_Invalid = 9, }
CXTypeNullabilityKind :: enum u32 {CXTypeNullability_NonNull = 0, CXTypeNullability_Nullable = 1, CXTypeNullability_Unspecified = 2, CXTypeNullability_Invalid = 3, CXTypeNullability_NullableResult = 4, }
CXTypeLayoutError :: enum i32 {CXTypeLayoutError_Invalid = -1, CXTypeLayoutError_Incomplete = -2, CXTypeLayoutError_Dependent = -3, CXTypeLayoutError_NotConstantSize = -4, CXTypeLayoutError_InvalidFieldName = -5, CXTypeLayoutError_Undeduced = -6, }
CXRefQualifierKind :: enum u32 {CXRefQualifier_None = 0, CXRefQualifier_LValue = 1, CXRefQualifier_RValue = 2, }
CX_CXXAccessSpecifier :: enum u32 {CX_CXXInvalidAccessSpecifier = 0, CX_CXXPublic = 1, CX_CXXProtected = 2, CX_CXXPrivate = 3, }
CX_StorageClass :: enum u32 {CX_SC_Invalid = 0, CX_SC_None = 1, CX_SC_Extern = 2, CX_SC_Static = 3, CX_SC_PrivateExtern = 4, CX_SC_OpenCLWorkGroupLocal = 5, CX_SC_Auto = 6, CX_SC_Register = 7, }
CXChildVisitResult :: enum u32 {CXChildVisit_Break = 0, CXChildVisit_Continue = 1, CXChildVisit_Recurse = 2, }
CXCursorVisitor :: #type proc "c" (cursor: CXCursor, parent: CXCursor, client_data: CXClientData) -> CXChildVisitResult
CXCursorVisitorBlock :: rawptr
CXPrintingPolicy :: rawptr
CXPrintingPolicyProperty :: enum u32 {CXPrintingPolicy_Indentation = 0, CXPrintingPolicy_SuppressSpecifiers = 1, CXPrintingPolicy_SuppressTagKeyword = 2, CXPrintingPolicy_IncludeTagDefinition = 3, CXPrintingPolicy_SuppressScope = 4, CXPrintingPolicy_SuppressUnwrittenScope = 5, CXPrintingPolicy_SuppressInitializers = 6, CXPrintingPolicy_ConstantArraySizeAsWritten = 7, CXPrintingPolicy_AnonymousTagLocations = 8, CXPrintingPolicy_SuppressStrongLifetime = 9, CXPrintingPolicy_SuppressLifetimeQualifiers = 10, CXPrintingPolicy_SuppressTemplateArgsInCXXConstructors = 11, CXPrintingPolicy_Bool = 12, CXPrintingPolicy_Restrict = 13, CXPrintingPolicy_Alignof = 14, CXPrintingPolicy_UnderscoreAlignof = 15, CXPrintingPolicy_UseVoidForZeroParams = 16, CXPrintingPolicy_TerseOutput = 17, CXPrintingPolicy_PolishForDeclaration = 18, CXPrintingPolicy_Half = 19, CXPrintingPolicy_MSWChar = 20, CXPrintingPolicy_IncludeNewlines = 21, CXPrintingPolicy_MSVCFormatting = 22, CXPrintingPolicy_ConstantsAsWritten = 23, CXPrintingPolicy_SuppressImplicitBase = 24, CXPrintingPolicy_FullyQualifiedName = 25, CXPrintingPolicy_LastProperty = 25, }
CXObjCPropertyAttrKind :: enum u32 {CXObjCPropertyAttr_noattr = 0, CXObjCPropertyAttr_readonly = 1, CXObjCPropertyAttr_getter = 2, CXObjCPropertyAttr_assign = 4, CXObjCPropertyAttr_readwrite = 8, CXObjCPropertyAttr_retain = 16, CXObjCPropertyAttr_copy = 32, CXObjCPropertyAttr_nonatomic = 64, CXObjCPropertyAttr_setter = 128, CXObjCPropertyAttr_atomic = 256, CXObjCPropertyAttr_weak = 512, CXObjCPropertyAttr_strong = 1024, CXObjCPropertyAttr_unsafe_unretained = 2048, CXObjCPropertyAttr_class = 4096, }
CXObjCDeclQualifierKind :: enum u32 {CXObjCDeclQualifier_None = 0, CXObjCDeclQualifier_In = 1, CXObjCDeclQualifier_Inout = 2, CXObjCDeclQualifier_Out = 4, CXObjCDeclQualifier_Bycopy = 8, CXObjCDeclQualifier_Byref = 16, CXObjCDeclQualifier_Oneway = 32, }
CXModule :: rawptr
CXNameRefFlags :: enum u32 {CXNameRange_WantQualifier = 1, CXNameRange_WantTemplateArgs = 2, CXNameRange_WantSinglePiece = 4, }
CXTokenKind :: enum u32 {CXToken_Punctuation = 0, CXToken_Keyword = 1, CXToken_Identifier = 2, CXToken_Literal = 3, CXToken_Comment = 4, }
CXToken :: struct {
    int_data: [4]u32,
    ptr_data: rawptr,
}
fn_func_ptr_anon_0 :: #type proc "c" (param0: rawptr)
CXCompletionString :: rawptr
CXCompletionResult :: struct {
    CursorKind: CXCursorKind,
    CompletionString: CXCompletionString,
}
CXCompletionChunkKind :: enum u32 {CXCompletionChunk_Optional = 0, CXCompletionChunk_TypedText = 1, CXCompletionChunk_Text = 2, CXCompletionChunk_Placeholder = 3, CXCompletionChunk_Informative = 4, CXCompletionChunk_CurrentParameter = 5, CXCompletionChunk_LeftParen = 6, CXCompletionChunk_RightParen = 7, CXCompletionChunk_LeftBracket = 8, CXCompletionChunk_RightBracket = 9, CXCompletionChunk_LeftBrace = 10, CXCompletionChunk_RightBrace = 11, CXCompletionChunk_LeftAngle = 12, CXCompletionChunk_RightAngle = 13, CXCompletionChunk_Comma = 14, CXCompletionChunk_ResultType = 15, CXCompletionChunk_Colon = 16, CXCompletionChunk_SemiColon = 17, CXCompletionChunk_Equal = 18, CXCompletionChunk_HorizontalSpace = 19, CXCompletionChunk_VerticalSpace = 20, }
CXCodeCompleteResults :: struct {
    Results: [^]CXCompletionResult,
    NumResults: u32,
}
CXCodeComplete_Flags :: enum u32 {CXCodeComplete_IncludeMacros = 1, CXCodeComplete_IncludeCodePatterns = 2, CXCodeComplete_IncludeBriefComments = 4, CXCodeComplete_SkipPreamble = 8, CXCodeComplete_IncludeCompletionsWithFixIts = 16, }
CXCompletionContext :: enum u32 {CXCompletionContext_Unexposed = 0, CXCompletionContext_AnyType = 1, CXCompletionContext_AnyValue = 2, CXCompletionContext_ObjCObjectValue = 4, CXCompletionContext_ObjCSelectorValue = 8, CXCompletionContext_CXXClassTypeValue = 16, CXCompletionContext_DotMemberAccess = 32, CXCompletionContext_ArrowMemberAccess = 64, CXCompletionContext_ObjCPropertyAccess = 128, CXCompletionContext_EnumTag = 256, CXCompletionContext_UnionTag = 512, CXCompletionContext_StructTag = 1024, CXCompletionContext_ClassTag = 2048, CXCompletionContext_Namespace = 4096, CXCompletionContext_NestedNameSpecifier = 8192, CXCompletionContext_ObjCInterface = 16384, CXCompletionContext_ObjCProtocol = 32768, CXCompletionContext_ObjCCategory = 65536, CXCompletionContext_ObjCInstanceMessage = 131072, CXCompletionContext_ObjCClassMessage = 262144, CXCompletionContext_ObjCSelectorName = 524288, CXCompletionContext_MacroName = 1048576, CXCompletionContext_NaturalLanguage = 2097152, CXCompletionContext_IncludedFile = 4194304, CXCompletionContext_Unknown = 8388607, }
CXInclusionVisitor :: #type proc "c" (included_file: CXFile, inclusion_stack: ^CXSourceLocation, include_len: u32, client_data: CXClientData)
CXEvalResultKind :: enum u32 {CXEval_Int = 1, CXEval_Float = 2, CXEval_ObjCStrLiteral = 3, CXEval_StrLiteral = 4, CXEval_CFStr = 5, CXEval_Other = 6, CXEval_UnExposed = 0, }
CXEvalResult :: rawptr
CXRemapping :: rawptr
CXVisitorResult :: enum u32 {CXVisit_Break = 0, CXVisit_Continue = 1, }
visit_func_ptr_anon_1 :: #type proc "c" (context_: rawptr, param1: CXCursor, param2: CXSourceRange) -> CXVisitorResult
CXCursorAndRangeVisitor :: struct {
    context_: rawptr,
    visit: visit_func_ptr_anon_1,
}
CXResult :: enum u32 {CXResult_Success = 0, CXResult_Invalid = 1, CXResult_VisitBreak = 2, }
CXCursorAndRangeVisitorBlock :: rawptr
CXIdxClientFile :: rawptr
CXIdxClientEntity :: rawptr
CXIdxClientContainer :: rawptr
CXIdxClientASTFile :: rawptr
CXIdxLoc :: struct {
    ptr_data: [2]rawptr,
    int_data: u32,
}
CXIdxIncludedFileInfo :: struct {
    hashLoc: CXIdxLoc,
    filename: cstring,
    file: CXFile,
    isImport: i32,
    isAngled: i32,
    isModuleImport: i32,
}
CXIdxImportedASTFileInfo :: struct {
    file: CXFile,
    module: CXModule,
    loc: CXIdxLoc,
    isImplicit: i32,
}
CXIdxEntityKind :: enum u32 {CXIdxEntity_Unexposed = 0, CXIdxEntity_Typedef = 1, CXIdxEntity_Function = 2, CXIdxEntity_Variable = 3, CXIdxEntity_Field = 4, CXIdxEntity_EnumConstant = 5, CXIdxEntity_ObjCClass = 6, CXIdxEntity_ObjCProtocol = 7, CXIdxEntity_ObjCCategory = 8, CXIdxEntity_ObjCInstanceMethod = 9, CXIdxEntity_ObjCClassMethod = 10, CXIdxEntity_ObjCProperty = 11, CXIdxEntity_ObjCIvar = 12, CXIdxEntity_Enum = 13, CXIdxEntity_Struct = 14, CXIdxEntity_Union = 15, CXIdxEntity_CXXClass = 16, CXIdxEntity_CXXNamespace = 17, CXIdxEntity_CXXNamespaceAlias = 18, CXIdxEntity_CXXStaticVariable = 19, CXIdxEntity_CXXStaticMethod = 20, CXIdxEntity_CXXInstanceMethod = 21, CXIdxEntity_CXXConstructor = 22, CXIdxEntity_CXXDestructor = 23, CXIdxEntity_CXXConversionFunction = 24, CXIdxEntity_CXXTypeAlias = 25, CXIdxEntity_CXXInterface = 26, CXIdxEntity_CXXConcept = 27, }
CXIdxEntityLanguage :: enum u32 {CXIdxEntityLang_None = 0, CXIdxEntityLang_C = 1, CXIdxEntityLang_ObjC = 2, CXIdxEntityLang_CXX = 3, CXIdxEntityLang_Swift = 4, }
CXIdxEntityCXXTemplateKind :: enum u32 {CXIdxEntity_NonTemplate = 0, CXIdxEntity_Template = 1, CXIdxEntity_TemplatePartialSpecialization = 2, CXIdxEntity_TemplateSpecialization = 3, }
CXIdxAttrKind :: enum u32 {CXIdxAttr_Unexposed = 0, CXIdxAttr_IBAction = 1, CXIdxAttr_IBOutlet = 2, CXIdxAttr_IBOutletCollection = 3, }
CXIdxAttrInfo :: struct {
    kind: CXIdxAttrKind,
    cursor: CXCursor,
    loc: CXIdxLoc,
}
CXIdxEntityInfo :: struct {
    kind: CXIdxEntityKind,
    templateKind: CXIdxEntityCXXTemplateKind,
    lang: CXIdxEntityLanguage,
    name: cstring,
    USR: cstring,
    cursor: CXCursor,
    attributes: ^[^]CXIdxAttrInfo,
    numAttributes: u32,
}
CXIdxContainerInfo :: struct {
    cursor: CXCursor,
}
CXIdxIBOutletCollectionAttrInfo :: struct {
    attrInfo: ^CXIdxAttrInfo,
    objcClass: [^]CXIdxEntityInfo,
    classCursor: CXCursor,
    classLoc: CXIdxLoc,
}
CXIdxDeclInfoFlags :: enum u32 {CXIdxDeclFlag_Skipped = 1, }
CXIdxDeclInfo :: struct {
    entityInfo: ^CXIdxEntityInfo,
    cursor: CXCursor,
    loc: CXIdxLoc,
    semanticContainer: ^CXIdxContainerInfo,
    lexicalContainer: ^CXIdxContainerInfo,
    isRedeclaration: i32,
    isDefinition: i32,
    isContainer: i32,
    declAsContainer: ^CXIdxContainerInfo,
    isImplicit: i32,
    attributes: ^[^]CXIdxAttrInfo,
    numAttributes: u32,
    flags: u32,
}
CXIdxObjCContainerKind :: enum u32 {CXIdxObjCContainer_ForwardRef = 0, CXIdxObjCContainer_Interface = 1, CXIdxObjCContainer_Implementation = 2, }
CXIdxObjCContainerDeclInfo :: struct {
    declInfo: ^CXIdxDeclInfo,
    kind: CXIdxObjCContainerKind,
}
CXIdxBaseClassInfo :: struct {
    base: ^CXIdxEntityInfo,
    cursor: CXCursor,
    loc: CXIdxLoc,
}
CXIdxObjCProtocolRefInfo :: struct {
    protocol: ^CXIdxEntityInfo,
    cursor: CXCursor,
    loc: CXIdxLoc,
}
CXIdxObjCProtocolRefListInfo :: struct {
    protocols: ^[^]CXIdxObjCProtocolRefInfo,
    numProtocols: u32,
}
CXIdxObjCInterfaceDeclInfo :: struct {
    containerInfo: ^CXIdxObjCContainerDeclInfo,
    superInfo: ^CXIdxBaseClassInfo,
    protocols: [^]CXIdxObjCProtocolRefListInfo,
}
CXIdxObjCCategoryDeclInfo :: struct {
    containerInfo: ^CXIdxObjCContainerDeclInfo,
    objcClass: [^]CXIdxEntityInfo,
    classCursor: CXCursor,
    classLoc: CXIdxLoc,
    protocols: [^]CXIdxObjCProtocolRefListInfo,
}
CXIdxObjCPropertyDeclInfo :: struct {
    declInfo: ^CXIdxDeclInfo,
    getter: ^CXIdxEntityInfo,
    setter: ^CXIdxEntityInfo,
}
CXIdxCXXClassDeclInfo :: struct {
    declInfo: ^CXIdxDeclInfo,
    bases: ^[^]CXIdxBaseClassInfo,
    numBases: u32,
}
CXIdxEntityRefKind :: enum u32 {CXIdxEntityRef_Direct = 1, CXIdxEntityRef_Implicit = 2, }
CXSymbolRole :: enum u32 {CXSymbolRole_None = 0, CXSymbolRole_Declaration = 1, CXSymbolRole_Definition = 2, CXSymbolRole_Reference = 4, CXSymbolRole_Read = 8, CXSymbolRole_Write = 16, CXSymbolRole_Call = 32, CXSymbolRole_Dynamic = 64, CXSymbolRole_AddressOf = 128, CXSymbolRole_Implicit = 256, }
CXIdxEntityRefInfo :: struct {
    kind: CXIdxEntityRefKind,
    cursor: CXCursor,
    loc: CXIdxLoc,
    referencedEntity: ^CXIdxEntityInfo,
    parentEntity: ^CXIdxEntityInfo,
    container: ^CXIdxContainerInfo,
    role: CXSymbolRole,
}
abortQuery_func_ptr_anon_2 :: #type proc "c" (client_data: CXClientData, reserved: rawptr) -> i32
diagnostic_func_ptr_anon_3 :: #type proc "c" (client_data: CXClientData, param1: CXDiagnosticSet, reserved: rawptr)
enteredMainFile_func_ptr_anon_4 :: #type proc "c" (client_data: CXClientData, mainFile: CXFile, reserved: rawptr) -> CXIdxClientFile
ppIncludedFile_func_ptr_anon_5 :: #type proc "c" (client_data: CXClientData, param1: ^CXIdxIncludedFileInfo) -> CXIdxClientFile
importedASTFile_func_ptr_anon_6 :: #type proc "c" (client_data: CXClientData, param1: ^CXIdxImportedASTFileInfo) -> CXIdxClientASTFile
startedTranslationUnit_func_ptr_anon_7 :: #type proc "c" (client_data: CXClientData, reserved: rawptr) -> CXIdxClientContainer
indexDeclaration_func_ptr_anon_8 :: #type proc "c" (client_data: CXClientData, param1: ^CXIdxDeclInfo)
indexEntityReference_func_ptr_anon_9 :: #type proc "c" (client_data: CXClientData, param1: ^CXIdxEntityRefInfo)
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
CXIndexAction :: rawptr
CXIndexOptFlags :: enum u32 {CXIndexOpt_None = 0, CXIndexOpt_SuppressRedundantRefs = 1, CXIndexOpt_IndexFunctionLocalSymbols = 2, CXIndexOpt_IndexImplicitTemplateInstantiations = 4, CXIndexOpt_SuppressWarnings = 8, CXIndexOpt_SkipParsedBodiesInSession = 16, }
CXFieldVisitor :: #type proc "c" (C: CXCursor, client_data: CXClientData) -> CXVisitorResult
CXBinaryOperatorKind :: enum u32 {CXBinaryOperator_Invalid = 0, CXBinaryOperator_PtrMemD = 1, CXBinaryOperator_PtrMemI = 2, CXBinaryOperator_Mul = 3, CXBinaryOperator_Div = 4, CXBinaryOperator_Rem = 5, CXBinaryOperator_Add = 6, CXBinaryOperator_Sub = 7, CXBinaryOperator_Shl = 8, CXBinaryOperator_Shr = 9, CXBinaryOperator_Cmp = 10, CXBinaryOperator_LT = 11, CXBinaryOperator_GT = 12, CXBinaryOperator_LE = 13, CXBinaryOperator_GE = 14, CXBinaryOperator_EQ = 15, CXBinaryOperator_NE = 16, CXBinaryOperator_And = 17, CXBinaryOperator_Xor = 18, CXBinaryOperator_Or = 19, CXBinaryOperator_LAnd = 20, CXBinaryOperator_LOr = 21, CXBinaryOperator_Assign = 22, CXBinaryOperator_MulAssign = 23, CXBinaryOperator_DivAssign = 24, CXBinaryOperator_RemAssign = 25, CXBinaryOperator_AddAssign = 26, CXBinaryOperator_SubAssign = 27, CXBinaryOperator_ShlAssign = 28, CXBinaryOperator_ShrAssign = 29, CXBinaryOperator_AndAssign = 30, CXBinaryOperator_XorAssign = 31, CXBinaryOperator_OrAssign = 32, CXBinaryOperator_Comma = 33, }
CXUnaryOperatorKind :: enum u32 {CXUnaryOperator_Invalid = 0, CXUnaryOperator_PostInc = 1, CXUnaryOperator_PostDec = 2, CXUnaryOperator_PreInc = 3, CXUnaryOperator_PreDec = 4, CXUnaryOperator_AddrOf = 5, CXUnaryOperator_Deref = 6, CXUnaryOperator_Plus = 7, CXUnaryOperator_Minus = 8, CXUnaryOperator_Not = 9, CXUnaryOperator_LNot = 10, CXUnaryOperator_Real = 11, CXUnaryOperator_Imag = 12, CXUnaryOperator_Extension = 13, CXUnaryOperator_Coawait = 14, }
CXRewriter :: rawptr
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
    VirtualFileOverlay_create :: proc(options: u32) -> CXVirtualFileOverlay ---

    @(link_name = "clang_VirtualFileOverlay_addFileMapping")
    VirtualFileOverlay_addFileMapping :: proc(param0: CXVirtualFileOverlay, virtualPath: cstring, realPath: cstring) -> CXErrorCode ---

    @(link_name = "clang_VirtualFileOverlay_setCaseSensitivity")
    VirtualFileOverlay_setCaseSensitivity :: proc(param0: CXVirtualFileOverlay, caseSensitive: i32) -> CXErrorCode ---

    @(link_name = "clang_VirtualFileOverlay_writeToBuffer")
    VirtualFileOverlay_writeToBuffer :: proc(param0: CXVirtualFileOverlay, options: u32, out_buffer_ptr: ^cstring, out_buffer_size: ^u32) -> CXErrorCode ---

    @(link_name = "clang_free")
    free :: proc(buffer: rawptr) ---

    @(link_name = "clang_VirtualFileOverlay_dispose")
    VirtualFileOverlay_dispose :: proc(param0: CXVirtualFileOverlay) ---

    @(link_name = "clang_ModuleMapDescriptor_create")
    ModuleMapDescriptor_create :: proc(options: u32) -> CXModuleMapDescriptor ---

    @(link_name = "clang_ModuleMapDescriptor_setFrameworkModuleName")
    ModuleMapDescriptor_setFrameworkModuleName :: proc(param0: CXModuleMapDescriptor, name: cstring) -> CXErrorCode ---

    @(link_name = "clang_ModuleMapDescriptor_setUmbrellaHeader")
    ModuleMapDescriptor_setUmbrellaHeader :: proc(param0: CXModuleMapDescriptor, name: cstring) -> CXErrorCode ---

    @(link_name = "clang_ModuleMapDescriptor_writeToBuffer")
    ModuleMapDescriptor_writeToBuffer :: proc(param0: CXModuleMapDescriptor, options: u32, out_buffer_ptr: ^cstring, out_buffer_size: ^u32) -> CXErrorCode ---

    @(link_name = "clang_ModuleMapDescriptor_dispose")
    ModuleMapDescriptor_dispose :: proc(param0: CXModuleMapDescriptor) ---

    @(link_name = "clang_CompilationDatabase_fromDirectory")
    CompilationDatabase_fromDirectory :: proc(BuildDir: cstring, ErrorCode: ^CXCompilationDatabase_Error) -> CXCompilationDatabase ---

    @(link_name = "clang_CompilationDatabase_dispose")
    CompilationDatabase_dispose :: proc(param0: CXCompilationDatabase) ---

    @(link_name = "clang_CompilationDatabase_getCompileCommands")
    CompilationDatabase_getCompileCommands :: proc(param0: CXCompilationDatabase, CompleteFileName: cstring) -> CXCompileCommands ---

    @(link_name = "clang_CompilationDatabase_getAllCompileCommands")
    CompilationDatabase_getAllCompileCommands :: proc(param0: CXCompilationDatabase) -> CXCompileCommands ---

    @(link_name = "clang_CompileCommands_dispose")
    CompileCommands_dispose :: proc(param0: CXCompileCommands) ---

    @(link_name = "clang_CompileCommands_getSize")
    CompileCommands_getSize :: proc(param0: CXCompileCommands) -> u32 ---

    @(link_name = "clang_CompileCommands_getCommand")
    CompileCommands_getCommand :: proc(param0: CXCompileCommands, I: u32) -> CXCompileCommand ---

    @(link_name = "clang_CompileCommand_getDirectory")
    CompileCommand_getDirectory :: proc(param0: CXCompileCommand) -> CXString ---

    @(link_name = "clang_CompileCommand_getFilename")
    CompileCommand_getFilename :: proc(param0: CXCompileCommand) -> CXString ---

    @(link_name = "clang_CompileCommand_getNumArgs")
    CompileCommand_getNumArgs :: proc(param0: CXCompileCommand) -> u32 ---

    @(link_name = "clang_CompileCommand_getArg")
    CompileCommand_getArg :: proc(param0: CXCompileCommand, I: u32) -> CXString ---

    @(link_name = "clang_CompileCommand_getNumMappedSources")
    CompileCommand_getNumMappedSources :: proc(param0: CXCompileCommand) -> u32 ---

    @(link_name = "clang_CompileCommand_getMappedSourcePath")
    CompileCommand_getMappedSourcePath :: proc(param0: CXCompileCommand, I: u32) -> CXString ---

    @(link_name = "clang_CompileCommand_getMappedSourceContent")
    CompileCommand_getMappedSourceContent :: proc(param0: CXCompileCommand, I: u32) -> CXString ---

    @(link_name = "clang_getNumDiagnosticsInSet")
    getNumDiagnosticsInSet :: proc(Diags: CXDiagnosticSet) -> u32 ---

    @(link_name = "clang_getDiagnosticInSet")
    getDiagnosticInSet :: proc(Diags: CXDiagnosticSet, Index: u32) -> CXDiagnostic ---

    @(link_name = "clang_loadDiagnostics")
    loadDiagnostics :: proc(file: cstring, error: ^CXLoadDiag_Error, errorString: ^CXString) -> CXDiagnosticSet ---

    @(link_name = "clang_disposeDiagnosticSet")
    disposeDiagnosticSet :: proc(Diags: CXDiagnosticSet) ---

    @(link_name = "clang_getChildDiagnostics")
    getChildDiagnostics :: proc(D: CXDiagnostic) -> CXDiagnosticSet ---

    @(link_name = "clang_disposeDiagnostic")
    disposeDiagnostic :: proc(Diagnostic: CXDiagnostic) ---

    @(link_name = "clang_formatDiagnostic")
    formatDiagnostic :: proc(Diagnostic: CXDiagnostic, Options: u32) -> CXString ---

    @(link_name = "clang_defaultDiagnosticDisplayOptions")
    defaultDiagnosticDisplayOptions :: proc() -> u32 ---

    @(link_name = "clang_getDiagnosticSeverity")
    getDiagnosticSeverity :: proc(param0: CXDiagnostic) -> CXDiagnosticSeverity ---

    @(link_name = "clang_getDiagnosticLocation")
    getDiagnosticLocation :: proc(param0: CXDiagnostic) -> CXSourceLocation ---

    @(link_name = "clang_getDiagnosticSpelling")
    getDiagnosticSpelling :: proc(param0: CXDiagnostic) -> CXString ---

    @(link_name = "clang_getDiagnosticOption")
    getDiagnosticOption :: proc(Diag: CXDiagnostic, Disable: ^CXString) -> CXString ---

    @(link_name = "clang_getDiagnosticCategory")
    getDiagnosticCategory :: proc(param0: CXDiagnostic) -> u32 ---

    @(link_name = "clang_getDiagnosticCategoryName")
    getDiagnosticCategoryName :: proc(Category: u32) -> CXString ---

    @(link_name = "clang_getDiagnosticCategoryText")
    getDiagnosticCategoryText :: proc(param0: CXDiagnostic) -> CXString ---

    @(link_name = "clang_getDiagnosticNumRanges")
    getDiagnosticNumRanges :: proc(param0: CXDiagnostic) -> u32 ---

    @(link_name = "clang_getDiagnosticRange")
    getDiagnosticRange :: proc(Diagnostic: CXDiagnostic, Range: u32) -> CXSourceRange ---

    @(link_name = "clang_getDiagnosticNumFixIts")
    getDiagnosticNumFixIts :: proc(Diagnostic: CXDiagnostic) -> u32 ---

    @(link_name = "clang_getDiagnosticFixIt")
    getDiagnosticFixIt :: proc(Diagnostic: CXDiagnostic, FixIt: u32, ReplacementRange: ^CXSourceRange) -> CXString ---

    @(link_name = "clang_getFileName")
    getFileName :: proc(SFile: CXFile) -> CXString ---

    @(link_name = "clang_getFileTime")
    getFileTime :: proc(SFile: CXFile) -> time_t ---

    @(link_name = "clang_getFileUniqueID")
    getFileUniqueID :: proc(file: CXFile, outID: ^CXFileUniqueID) -> i32 ---

    @(link_name = "clang_File_isEqual")
    File_isEqual :: proc(file1: CXFile, file2: CXFile) -> i32 ---

    @(link_name = "clang_File_tryGetRealPathName")
    File_tryGetRealPathName :: proc(file: CXFile) -> CXString ---

    @(link_name = "clang_getNullLocation")
    getNullLocation :: proc() -> CXSourceLocation ---

    @(link_name = "clang_equalLocations")
    equalLocations :: proc(loc1: CXSourceLocation, loc2: CXSourceLocation) -> u32 ---

    @(link_name = "clang_Location_isInSystemHeader")
    Location_isInSystemHeader :: proc(location: CXSourceLocation) -> i32 ---

    @(link_name = "clang_Location_isFromMainFile")
    Location_isFromMainFile :: proc(location: CXSourceLocation) -> i32 ---

    @(link_name = "clang_getNullRange")
    getNullRange :: proc() -> CXSourceRange ---

    @(link_name = "clang_getRange")
    getRange :: proc(begin: CXSourceLocation, end: CXSourceLocation) -> CXSourceRange ---

    @(link_name = "clang_equalRanges")
    equalRanges :: proc(range1: CXSourceRange, range2: CXSourceRange) -> u32 ---

    @(link_name = "clang_Range_isNull")
    Range_isNull :: proc(range: CXSourceRange) -> i32 ---

    @(link_name = "clang_getExpansionLocation")
    getExpansionLocation :: proc(location: CXSourceLocation, file: ^CXFile, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getPresumedLocation")
    getPresumedLocation :: proc(location: CXSourceLocation, filename: ^CXString, line: ^u32, column: ^u32) ---

    @(link_name = "clang_getInstantiationLocation")
    getInstantiationLocation :: proc(location: CXSourceLocation, file: ^CXFile, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getSpellingLocation")
    getSpellingLocation :: proc(location: CXSourceLocation, file: ^CXFile, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getFileLocation")
    getFileLocation :: proc(location: CXSourceLocation, file: ^CXFile, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_getRangeStart")
    getRangeStart :: proc(range: CXSourceRange) -> CXSourceLocation ---

    @(link_name = "clang_getRangeEnd")
    getRangeEnd :: proc(range: CXSourceRange) -> CXSourceLocation ---

    @(link_name = "clang_disposeSourceRangeList")
    disposeSourceRangeList :: proc(ranges: [^]CXSourceRangeList) ---

    @(link_name = "clang_getCString")
    getCString :: proc(string_: CXString) -> cstring ---

    @(link_name = "clang_disposeString")
    disposeString :: proc(string_: CXString) ---

    @(link_name = "clang_disposeStringSet")
    disposeStringSet :: proc(set: ^CXStringSet) ---

    @(link_name = "clang_Cursor_getParsedComment")
    Cursor_getParsedComment :: proc(C: CXCursor) -> CXComment ---

    @(link_name = "clang_Comment_getKind")
    Comment_getKind :: proc(Comment: CXComment) -> CXCommentKind ---

    @(link_name = "clang_Comment_getNumChildren")
    Comment_getNumChildren :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_Comment_getChild")
    Comment_getChild :: proc(Comment: CXComment, ChildIdx: u32) -> CXComment ---

    @(link_name = "clang_Comment_isWhitespace")
    Comment_isWhitespace :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_InlineContentComment_hasTrailingNewline")
    InlineContentComment_hasTrailingNewline :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_TextComment_getText")
    TextComment_getText :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_InlineCommandComment_getCommandName")
    InlineCommandComment_getCommandName :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_InlineCommandComment_getRenderKind")
    InlineCommandComment_getRenderKind :: proc(Comment: CXComment) -> CXCommentInlineCommandRenderKind ---

    @(link_name = "clang_InlineCommandComment_getNumArgs")
    InlineCommandComment_getNumArgs :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_InlineCommandComment_getArgText")
    InlineCommandComment_getArgText :: proc(Comment: CXComment, ArgIdx: u32) -> CXString ---

    @(link_name = "clang_HTMLTagComment_getTagName")
    HTMLTagComment_getTagName :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_HTMLStartTagComment_isSelfClosing")
    HTMLStartTagComment_isSelfClosing :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_HTMLStartTag_getNumAttrs")
    HTMLStartTag_getNumAttrs :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_HTMLStartTag_getAttrName")
    HTMLStartTag_getAttrName :: proc(Comment: CXComment, AttrIdx: u32) -> CXString ---

    @(link_name = "clang_HTMLStartTag_getAttrValue")
    HTMLStartTag_getAttrValue :: proc(Comment: CXComment, AttrIdx: u32) -> CXString ---

    @(link_name = "clang_BlockCommandComment_getCommandName")
    BlockCommandComment_getCommandName :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_BlockCommandComment_getNumArgs")
    BlockCommandComment_getNumArgs :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_BlockCommandComment_getArgText")
    BlockCommandComment_getArgText :: proc(Comment: CXComment, ArgIdx: u32) -> CXString ---

    @(link_name = "clang_BlockCommandComment_getParagraph")
    BlockCommandComment_getParagraph :: proc(Comment: CXComment) -> CXComment ---

    @(link_name = "clang_ParamCommandComment_getParamName")
    ParamCommandComment_getParamName :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_ParamCommandComment_isParamIndexValid")
    ParamCommandComment_isParamIndexValid :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_ParamCommandComment_getParamIndex")
    ParamCommandComment_getParamIndex :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_ParamCommandComment_isDirectionExplicit")
    ParamCommandComment_isDirectionExplicit :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_ParamCommandComment_getDirection")
    ParamCommandComment_getDirection :: proc(Comment: CXComment) -> CXCommentParamPassDirection ---

    @(link_name = "clang_TParamCommandComment_getParamName")
    TParamCommandComment_getParamName :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_TParamCommandComment_isParamPositionValid")
    TParamCommandComment_isParamPositionValid :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_TParamCommandComment_getDepth")
    TParamCommandComment_getDepth :: proc(Comment: CXComment) -> u32 ---

    @(link_name = "clang_TParamCommandComment_getIndex")
    TParamCommandComment_getIndex :: proc(Comment: CXComment, Depth: u32) -> u32 ---

    @(link_name = "clang_VerbatimBlockLineComment_getText")
    VerbatimBlockLineComment_getText :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_VerbatimLineComment_getText")
    VerbatimLineComment_getText :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_HTMLTagComment_getAsString")
    HTMLTagComment_getAsString :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_FullComment_getAsHTML")
    FullComment_getAsHTML :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_FullComment_getAsXML")
    FullComment_getAsXML :: proc(Comment: CXComment) -> CXString ---

    @(link_name = "clang_createAPISet")
    createAPISet :: proc(tu: CXTranslationUnit, out_api: ^CXAPISet) -> CXErrorCode ---

    @(link_name = "clang_disposeAPISet")
    disposeAPISet :: proc(api: CXAPISet) ---

    @(link_name = "clang_getSymbolGraphForUSR")
    getSymbolGraphForUSR :: proc(usr: cstring, api: CXAPISet) -> CXString ---

    @(link_name = "clang_getSymbolGraphForCursor")
    getSymbolGraphForCursor :: proc(cursor: CXCursor) -> CXString ---

    @(link_name = "clang_install_aborting_llvm_fatal_error_handler")
    install_aborting_llvm_fatal_error_handler :: proc() ---

    @(link_name = "clang_uninstall_llvm_fatal_error_handler")
    uninstall_llvm_fatal_error_handler :: proc() ---

    @(link_name = "clang_createIndex")
    createIndex :: proc(excludeDeclarationsFromPCH: i32, displayDiagnostics: i32) -> CXIndex ---

    @(link_name = "clang_disposeIndex")
    disposeIndex :: proc(index: CXIndex) ---

    @(link_name = "clang_createIndexWithOptions")
    createIndexWithOptions :: proc(options: rawptr) -> CXIndex ---

    @(link_name = "clang_CXIndex_setGlobalOptions")
    Index_setGlobalOptions :: proc(param0: CXIndex, options: u32) ---

    @(link_name = "clang_CXIndex_getGlobalOptions")
    Index_getGlobalOptions :: proc(param0: CXIndex) -> u32 ---

    @(link_name = "clang_CXIndex_setInvocationEmissionPathOption")
    Index_setInvocationEmissionPathOption :: proc(param0: CXIndex, Path: cstring) ---

    @(link_name = "clang_isFileMultipleIncludeGuarded")
    isFileMultipleIncludeGuarded :: proc(tu: CXTranslationUnit, file: CXFile) -> u32 ---

    @(link_name = "clang_getFile")
    getFile :: proc(tu: CXTranslationUnit, file_name: cstring) -> CXFile ---

    @(link_name = "clang_getFileContents")
    getFileContents :: proc(tu: CXTranslationUnit, file: CXFile, size: ^u64) -> cstring ---

    @(link_name = "clang_getLocation")
    getLocation :: proc(tu: CXTranslationUnit, file: CXFile, line: u32, column: u32) -> CXSourceLocation ---

    @(link_name = "clang_getLocationForOffset")
    getLocationForOffset :: proc(tu: CXTranslationUnit, file: CXFile, offset: u32) -> CXSourceLocation ---

    @(link_name = "clang_getSkippedRanges")
    getSkippedRanges :: proc(tu: CXTranslationUnit, file: CXFile) -> ^CXSourceRangeList ---

    @(link_name = "clang_getAllSkippedRanges")
    getAllSkippedRanges :: proc(tu: CXTranslationUnit) -> ^CXSourceRangeList ---

    @(link_name = "clang_getNumDiagnostics")
    getNumDiagnostics :: proc(Unit: CXTranslationUnit) -> u32 ---

    @(link_name = "clang_getDiagnostic")
    getDiagnostic :: proc(Unit: CXTranslationUnit, Index: u32) -> CXDiagnostic ---

    @(link_name = "clang_getDiagnosticSetFromTU")
    getDiagnosticSetFromTU :: proc(Unit: CXTranslationUnit) -> CXDiagnosticSet ---

    @(link_name = "clang_getTranslationUnitSpelling")
    getTranslationUnitSpelling :: proc(CTUnit: CXTranslationUnit) -> CXString ---

    @(link_name = "clang_createTranslationUnitFromSourceFile")
    createTranslationUnitFromSourceFile :: proc(CIdx: CXIndex, source_filename: cstring, num_clang_command_line_args: i32, clang_command_line_args: [^]cstring, num_unsaved_files: u32, unsaved_files: [^]CXUnsavedFile) -> CXTranslationUnit ---

    @(link_name = "clang_createTranslationUnit")
    createTranslationUnit :: proc(CIdx: CXIndex, ast_filename: cstring) -> CXTranslationUnit ---

    @(link_name = "clang_createTranslationUnit2")
    createTranslationUnit2 :: proc(CIdx: CXIndex, ast_filename: cstring, out_TU: ^CXTranslationUnit) -> CXErrorCode ---

    @(link_name = "clang_defaultEditingTranslationUnitOptions")
    defaultEditingTranslationUnitOptions :: proc() -> u32 ---

    @(link_name = "clang_parseTranslationUnit")
    parseTranslationUnit :: proc(CIdx: CXIndex, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]CXUnsavedFile, num_unsaved_files: u32, options: u32) -> CXTranslationUnit ---

    @(link_name = "clang_parseTranslationUnit2")
    parseTranslationUnit2 :: proc(CIdx: CXIndex, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]CXUnsavedFile, num_unsaved_files: u32, options: u32, out_TU: ^CXTranslationUnit) -> CXErrorCode ---

    @(link_name = "clang_parseTranslationUnit2FullArgv")
    parseTranslationUnit2FullArgv :: proc(CIdx: CXIndex, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]CXUnsavedFile, num_unsaved_files: u32, options: u32, out_TU: ^CXTranslationUnit) -> CXErrorCode ---

    @(link_name = "clang_defaultSaveOptions")
    defaultSaveOptions :: proc(TU: CXTranslationUnit) -> u32 ---

    @(link_name = "clang_saveTranslationUnit")
    saveTranslationUnit :: proc(TU: CXTranslationUnit, FileName: cstring, options: u32) -> i32 ---

    @(link_name = "clang_suspendTranslationUnit")
    suspendTranslationUnit :: proc(param0: CXTranslationUnit) -> u32 ---

    @(link_name = "clang_disposeTranslationUnit")
    disposeTranslationUnit :: proc(param0: CXTranslationUnit) ---

    @(link_name = "clang_defaultReparseOptions")
    defaultReparseOptions :: proc(TU: CXTranslationUnit) -> u32 ---

    @(link_name = "clang_reparseTranslationUnit")
    reparseTranslationUnit :: proc(TU: CXTranslationUnit, num_unsaved_files: u32, unsaved_files: [^]CXUnsavedFile, options: u32) -> i32 ---

    @(link_name = "clang_getTUResourceUsageName")
    getTUResourceUsageName :: proc(kind: CXTUResourceUsageKind) -> cstring ---

    @(link_name = "clang_getCXTUResourceUsage")
    getCXTUResourceUsage :: proc(TU: CXTranslationUnit) -> CXTUResourceUsage ---

    @(link_name = "clang_disposeCXTUResourceUsage")
    disposeCXTUResourceUsage :: proc(usage: CXTUResourceUsage) ---

    @(link_name = "clang_getTranslationUnitTargetInfo")
    getTranslationUnitTargetInfo :: proc(CTUnit: CXTranslationUnit) -> CXTargetInfo ---

    @(link_name = "clang_TargetInfo_dispose")
    TargetInfo_dispose :: proc(Info: CXTargetInfo) ---

    @(link_name = "clang_TargetInfo_getTriple")
    TargetInfo_getTriple :: proc(Info: CXTargetInfo) -> CXString ---

    @(link_name = "clang_TargetInfo_getPointerWidth")
    TargetInfo_getPointerWidth :: proc(Info: CXTargetInfo) -> i32 ---

    @(link_name = "clang_getNullCursor")
    getNullCursor :: proc() -> CXCursor ---

    @(link_name = "clang_getTranslationUnitCursor")
    getTranslationUnitCursor :: proc(param0: CXTranslationUnit) -> CXCursor ---

    @(link_name = "clang_equalCursors")
    equalCursors :: proc(param0: CXCursor, param1: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isNull")
    Cursor_isNull :: proc(cursor: CXCursor) -> i32 ---

    @(link_name = "clang_hashCursor")
    hashCursor :: proc(param0: CXCursor) -> u32 ---

    @(link_name = "clang_getCursorKind")
    getCursorKind :: proc(param0: CXCursor) -> CXCursorKind ---

    @(link_name = "clang_isDeclaration")
    isDeclaration :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isInvalidDeclaration")
    isInvalidDeclaration :: proc(param0: CXCursor) -> u32 ---

    @(link_name = "clang_isReference")
    isReference :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isExpression")
    isExpression :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isStatement")
    isStatement :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isAttribute")
    isAttribute :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_Cursor_hasAttrs")
    Cursor_hasAttrs :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_isInvalid")
    isInvalid :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isTranslationUnit")
    isTranslationUnit :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isPreprocessing")
    isPreprocessing :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_isUnexposed")
    isUnexposed :: proc(param0: CXCursorKind) -> u32 ---

    @(link_name = "clang_getCursorLinkage")
    getCursorLinkage :: proc(cursor: CXCursor) -> CXLinkageKind ---

    @(link_name = "clang_getCursorVisibility")
    getCursorVisibility :: proc(cursor: CXCursor) -> CXVisibilityKind ---

    @(link_name = "clang_getCursorAvailability")
    getCursorAvailability :: proc(cursor: CXCursor) -> CXAvailabilityKind ---

    @(link_name = "clang_getCursorPlatformAvailability")
    getCursorPlatformAvailability :: proc(cursor: CXCursor, always_deprecated: ^i32, deprecated_message: ^CXString, always_unavailable: ^i32, unavailable_message: ^CXString, availability: ^CXPlatformAvailability, availability_size: i32) -> i32 ---

    @(link_name = "clang_disposeCXPlatformAvailability")
    disposeCXPlatformAvailability :: proc(availability: ^CXPlatformAvailability) ---

    @(link_name = "clang_Cursor_getVarDeclInitializer")
    Cursor_getVarDeclInitializer :: proc(cursor: CXCursor) -> CXCursor ---

    @(link_name = "clang_Cursor_hasVarDeclGlobalStorage")
    Cursor_hasVarDeclGlobalStorage :: proc(cursor: CXCursor) -> i32 ---

    @(link_name = "clang_Cursor_hasVarDeclExternalStorage")
    Cursor_hasVarDeclExternalStorage :: proc(cursor: CXCursor) -> i32 ---

    @(link_name = "clang_getCursorLanguage")
    getCursorLanguage :: proc(cursor: CXCursor) -> CXLanguageKind ---

    @(link_name = "clang_getCursorTLSKind")
    getCursorTLSKind :: proc(cursor: CXCursor) -> CXTLSKind ---

    @(link_name = "clang_Cursor_getTranslationUnit")
    Cursor_getTranslationUnit :: proc(param0: CXCursor) -> CXTranslationUnit ---

    @(link_name = "clang_createCXCursorSet")
    createCXCursorSet :: proc() -> CXCursorSet ---

    @(link_name = "clang_disposeCXCursorSet")
    disposeCXCursorSet :: proc(cset: CXCursorSet) ---

    @(link_name = "clang_CXCursorSet_contains")
    CursorSet_contains :: proc(cset: CXCursorSet, cursor: CXCursor) -> u32 ---

    @(link_name = "clang_CXCursorSet_insert")
    CursorSet_insert :: proc(cset: CXCursorSet, cursor: CXCursor) -> u32 ---

    @(link_name = "clang_getCursorSemanticParent")
    getCursorSemanticParent :: proc(cursor: CXCursor) -> CXCursor ---

    @(link_name = "clang_getCursorLexicalParent")
    getCursorLexicalParent :: proc(cursor: CXCursor) -> CXCursor ---

    @(link_name = "clang_getOverriddenCursors")
    getOverriddenCursors :: proc(cursor: CXCursor, overridden: ^^CXCursor, num_overridden: ^u32) ---

    @(link_name = "clang_disposeOverriddenCursors")
    disposeOverriddenCursors :: proc(overridden: ^CXCursor) ---

    @(link_name = "clang_getIncludedFile")
    getIncludedFile :: proc(cursor: CXCursor) -> CXFile ---

    @(link_name = "clang_getCursor")
    getCursor :: proc(param0: CXTranslationUnit, param1: CXSourceLocation) -> CXCursor ---

    @(link_name = "clang_getCursorLocation")
    getCursorLocation :: proc(param0: CXCursor) -> CXSourceLocation ---

    @(link_name = "clang_getCursorExtent")
    getCursorExtent :: proc(param0: CXCursor) -> CXSourceRange ---

    @(link_name = "clang_getCursorType")
    getCursorType :: proc(C: CXCursor) -> CXType ---

    @(link_name = "clang_getTypeSpelling")
    getTypeSpelling :: proc(CT: CXType) -> CXString ---

    @(link_name = "clang_getTypedefDeclUnderlyingType")
    getTypedefDeclUnderlyingType :: proc(C: CXCursor) -> CXType ---

    @(link_name = "clang_getEnumDeclIntegerType")
    getEnumDeclIntegerType :: proc(C: CXCursor) -> CXType ---

    @(link_name = "clang_getEnumConstantDeclValue")
    getEnumConstantDeclValue :: proc(C: CXCursor) -> i64 ---

    @(link_name = "clang_getEnumConstantDeclUnsignedValue")
    getEnumConstantDeclUnsignedValue :: proc(C: CXCursor) -> u64 ---

    @(link_name = "clang_Cursor_isBitField")
    Cursor_isBitField :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_getFieldDeclBitWidth")
    getFieldDeclBitWidth :: proc(C: CXCursor) -> i32 ---

    @(link_name = "clang_Cursor_getNumArguments")
    Cursor_getNumArguments :: proc(C: CXCursor) -> i32 ---

    @(link_name = "clang_Cursor_getArgument")
    Cursor_getArgument :: proc(C: CXCursor, i: u32) -> CXCursor ---

    @(link_name = "clang_Cursor_getNumTemplateArguments")
    Cursor_getNumTemplateArguments :: proc(C: CXCursor) -> i32 ---

    @(link_name = "clang_Cursor_getTemplateArgumentKind")
    Cursor_getTemplateArgumentKind :: proc(C: CXCursor, I: u32) -> CXTemplateArgumentKind ---

    @(link_name = "clang_Cursor_getTemplateArgumentType")
    Cursor_getTemplateArgumentType :: proc(C: CXCursor, I: u32) -> CXType ---

    @(link_name = "clang_Cursor_getTemplateArgumentValue")
    Cursor_getTemplateArgumentValue :: proc(C: CXCursor, I: u32) -> i64 ---

    @(link_name = "clang_Cursor_getTemplateArgumentUnsignedValue")
    Cursor_getTemplateArgumentUnsignedValue :: proc(C: CXCursor, I: u32) -> u64 ---

    @(link_name = "clang_equalTypes")
    equalTypes :: proc(A: CXType, B: CXType) -> u32 ---

    @(link_name = "clang_getCanonicalType")
    getCanonicalType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_isConstQualifiedType")
    isConstQualifiedType :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_Cursor_isMacroFunctionLike")
    Cursor_isMacroFunctionLike :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isMacroBuiltin")
    Cursor_isMacroBuiltin :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isFunctionInlined")
    Cursor_isFunctionInlined :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_isVolatileQualifiedType")
    isVolatileQualifiedType :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_isRestrictQualifiedType")
    isRestrictQualifiedType :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_getAddressSpace")
    getAddressSpace :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_getTypedefName")
    getTypedefName :: proc(CT: CXType) -> CXString ---

    @(link_name = "clang_getPointeeType")
    getPointeeType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_getUnqualifiedType")
    getUnqualifiedType :: proc(CT: CXType) -> CXType ---

    @(link_name = "clang_getNonReferenceType")
    getNonReferenceType :: proc(CT: CXType) -> CXType ---

    @(link_name = "clang_getTypeDeclaration")
    getTypeDeclaration :: proc(T: CXType) -> CXCursor ---

    @(link_name = "clang_getDeclObjCTypeEncoding")
    getDeclObjCTypeEncoding :: proc(C: CXCursor) -> CXString ---

    @(link_name = "clang_Type_getObjCEncoding")
    Type_getObjCEncoding :: proc(type: CXType) -> CXString ---

    @(link_name = "clang_getTypeKindSpelling")
    getTypeKindSpelling :: proc(K: CXTypeKind) -> CXString ---

    @(link_name = "clang_getFunctionTypeCallingConv")
    getFunctionTypeCallingConv :: proc(T: CXType) -> CXCallingConv ---

    @(link_name = "clang_getResultType")
    getResultType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_getExceptionSpecificationType")
    getExceptionSpecificationType :: proc(T: CXType) -> i32 ---

    @(link_name = "clang_getNumArgTypes")
    getNumArgTypes :: proc(T: CXType) -> i32 ---

    @(link_name = "clang_getArgType")
    getArgType :: proc(T: CXType, i: u32) -> CXType ---

    @(link_name = "clang_Type_getObjCObjectBaseType")
    Type_getObjCObjectBaseType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_Type_getNumObjCProtocolRefs")
    Type_getNumObjCProtocolRefs :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_Type_getObjCProtocolDecl")
    Type_getObjCProtocolDecl :: proc(T: CXType, i: u32) -> CXCursor ---

    @(link_name = "clang_Type_getNumObjCTypeArgs")
    Type_getNumObjCTypeArgs :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_Type_getObjCTypeArg")
    Type_getObjCTypeArg :: proc(T: CXType, i: u32) -> CXType ---

    @(link_name = "clang_isFunctionTypeVariadic")
    isFunctionTypeVariadic :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_getCursorResultType")
    getCursorResultType :: proc(C: CXCursor) -> CXType ---

    @(link_name = "clang_getCursorExceptionSpecificationType")
    getCursorExceptionSpecificationType :: proc(C: CXCursor) -> i32 ---

    @(link_name = "clang_isPODType")
    isPODType :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_getElementType")
    getElementType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_getNumElements")
    getNumElements :: proc(T: CXType) -> i64 ---

    @(link_name = "clang_getArrayElementType")
    getArrayElementType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_getArraySize")
    getArraySize :: proc(T: CXType) -> i64 ---

    @(link_name = "clang_Type_getNamedType")
    Type_getNamedType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_Type_isTransparentTagTypedef")
    Type_isTransparentTagTypedef :: proc(T: CXType) -> u32 ---

    @(link_name = "clang_Type_getNullability")
    Type_getNullability :: proc(T: CXType) -> CXTypeNullabilityKind ---

    @(link_name = "clang_Type_getAlignOf")
    Type_getAlignOf :: proc(T: CXType) -> i64 ---

    @(link_name = "clang_Type_getClassType")
    Type_getClassType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_Type_getSizeOf")
    Type_getSizeOf :: proc(T: CXType) -> i64 ---

    @(link_name = "clang_Type_getOffsetOf")
    Type_getOffsetOf :: proc(T: CXType, S: cstring) -> i64 ---

    @(link_name = "clang_Type_getModifiedType")
    Type_getModifiedType :: proc(T: CXType) -> CXType ---

    @(link_name = "clang_Type_getValueType")
    Type_getValueType :: proc(CT: CXType) -> CXType ---

    @(link_name = "clang_Cursor_getOffsetOfField")
    Cursor_getOffsetOfField :: proc(C: CXCursor) -> i64 ---

    @(link_name = "clang_Cursor_isAnonymous")
    Cursor_isAnonymous :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isAnonymousRecordDecl")
    Cursor_isAnonymousRecordDecl :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isInlineNamespace")
    Cursor_isInlineNamespace :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Type_getNumTemplateArguments")
    Type_getNumTemplateArguments :: proc(T: CXType) -> i32 ---

    @(link_name = "clang_Type_getTemplateArgumentAsType")
    Type_getTemplateArgumentAsType :: proc(T: CXType, i: u32) -> CXType ---

    @(link_name = "clang_Type_getCXXRefQualifier")
    Type_getCXXRefQualifier :: proc(T: CXType) -> CXRefQualifierKind ---

    @(link_name = "clang_isVirtualBase")
    isVirtualBase :: proc(param0: CXCursor) -> u32 ---

    @(link_name = "clang_getCXXAccessSpecifier")
    getCXXAccessSpecifier :: proc(param0: CXCursor) -> CX_CXXAccessSpecifier ---

    @(link_name = "clang_Cursor_getStorageClass")
    Cursor_getStorageClass :: proc(param0: CXCursor) -> CX_StorageClass ---

    @(link_name = "clang_getNumOverloadedDecls")
    getNumOverloadedDecls :: proc(cursor: CXCursor) -> u32 ---

    @(link_name = "clang_getOverloadedDecl")
    getOverloadedDecl :: proc(cursor: CXCursor, index: u32) -> CXCursor ---

    @(link_name = "clang_getIBOutletCollectionType")
    getIBOutletCollectionType :: proc(param0: CXCursor) -> CXType ---

    @(link_name = "clang_visitChildren")
    visitChildren :: proc(parent: CXCursor, visitor: CXCursorVisitor, client_data: CXClientData) -> u32 ---

    @(link_name = "clang_visitChildrenWithBlock")
    visitChildrenWithBlock :: proc(parent: CXCursor, block: CXCursorVisitorBlock) -> u32 ---

    @(link_name = "clang_getCursorUSR")
    getCursorUSR :: proc(param0: CXCursor) -> CXString ---

    @(link_name = "clang_constructUSR_ObjCClass")
    constructUSR_ObjCClass :: proc(class_name: cstring) -> CXString ---

    @(link_name = "clang_constructUSR_ObjCCategory")
    constructUSR_ObjCCategory :: proc(class_name: cstring, category_name: cstring) -> CXString ---

    @(link_name = "clang_constructUSR_ObjCProtocol")
    constructUSR_ObjCProtocol :: proc(protocol_name: cstring) -> CXString ---

    @(link_name = "clang_constructUSR_ObjCIvar")
    constructUSR_ObjCIvar :: proc(name: cstring, classUSR: CXString) -> CXString ---

    @(link_name = "clang_constructUSR_ObjCMethod")
    constructUSR_ObjCMethod :: proc(name: cstring, isInstanceMethod: u32, classUSR: CXString) -> CXString ---

    @(link_name = "clang_constructUSR_ObjCProperty")
    constructUSR_ObjCProperty :: proc(property: cstring, classUSR: CXString) -> CXString ---

    @(link_name = "clang_getCursorSpelling")
    getCursorSpelling :: proc(param0: CXCursor) -> CXString ---

    @(link_name = "clang_Cursor_getSpellingNameRange")
    Cursor_getSpellingNameRange :: proc(param0: CXCursor, pieceIndex: u32, options: u32) -> CXSourceRange ---

    @(link_name = "clang_PrintingPolicy_getProperty")
    PrintingPolicy_getProperty :: proc(Policy: CXPrintingPolicy, Property: CXPrintingPolicyProperty) -> u32 ---

    @(link_name = "clang_PrintingPolicy_setProperty")
    PrintingPolicy_setProperty :: proc(Policy: CXPrintingPolicy, Property: CXPrintingPolicyProperty, Value: u32) ---

    @(link_name = "clang_getCursorPrintingPolicy")
    getCursorPrintingPolicy :: proc(param0: CXCursor) -> CXPrintingPolicy ---

    @(link_name = "clang_PrintingPolicy_dispose")
    PrintingPolicy_dispose :: proc(Policy: CXPrintingPolicy) ---

    @(link_name = "clang_getCursorPrettyPrinted")
    getCursorPrettyPrinted :: proc(Cursor: CXCursor, Policy: CXPrintingPolicy) -> CXString ---

    @(link_name = "clang_getCursorDisplayName")
    getCursorDisplayName :: proc(param0: CXCursor) -> CXString ---

    @(link_name = "clang_getCursorReferenced")
    getCursorReferenced :: proc(param0: CXCursor) -> CXCursor ---

    @(link_name = "clang_getCursorDefinition")
    getCursorDefinition :: proc(param0: CXCursor) -> CXCursor ---

    @(link_name = "clang_isCursorDefinition")
    isCursorDefinition :: proc(param0: CXCursor) -> u32 ---

    @(link_name = "clang_getCanonicalCursor")
    getCanonicalCursor :: proc(param0: CXCursor) -> CXCursor ---

    @(link_name = "clang_Cursor_getObjCSelectorIndex")
    Cursor_getObjCSelectorIndex :: proc(param0: CXCursor) -> i32 ---

    @(link_name = "clang_Cursor_isDynamicCall")
    Cursor_isDynamicCall :: proc(C: CXCursor) -> i32 ---

    @(link_name = "clang_Cursor_getReceiverType")
    Cursor_getReceiverType :: proc(C: CXCursor) -> CXType ---

    @(link_name = "clang_Cursor_getObjCPropertyAttributes")
    Cursor_getObjCPropertyAttributes :: proc(C: CXCursor, reserved: u32) -> u32 ---

    @(link_name = "clang_Cursor_getObjCPropertyGetterName")
    Cursor_getObjCPropertyGetterName :: proc(C: CXCursor) -> CXString ---

    @(link_name = "clang_Cursor_getObjCPropertySetterName")
    Cursor_getObjCPropertySetterName :: proc(C: CXCursor) -> CXString ---

    @(link_name = "clang_Cursor_getObjCDeclQualifiers")
    Cursor_getObjCDeclQualifiers :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isObjCOptional")
    Cursor_isObjCOptional :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isVariadic")
    Cursor_isVariadic :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_Cursor_isExternalSymbol")
    Cursor_isExternalSymbol :: proc(C: CXCursor, language: ^CXString, definedIn: ^CXString, isGenerated: ^u32) -> u32 ---

    @(link_name = "clang_Cursor_getCommentRange")
    Cursor_getCommentRange :: proc(C: CXCursor) -> CXSourceRange ---

    @(link_name = "clang_Cursor_getRawCommentText")
    Cursor_getRawCommentText :: proc(C: CXCursor) -> CXString ---

    @(link_name = "clang_Cursor_getBriefCommentText")
    Cursor_getBriefCommentText :: proc(C: CXCursor) -> CXString ---

    @(link_name = "clang_Cursor_getMangling")
    Cursor_getMangling :: proc(param0: CXCursor) -> CXString ---

    @(link_name = "clang_Cursor_getCXXManglings")
    Cursor_getCXXManglings :: proc(param0: CXCursor) -> ^CXStringSet ---

    @(link_name = "clang_Cursor_getObjCManglings")
    Cursor_getObjCManglings :: proc(param0: CXCursor) -> ^CXStringSet ---

    @(link_name = "clang_Cursor_getModule")
    Cursor_getModule :: proc(C: CXCursor) -> CXModule ---

    @(link_name = "clang_getModuleForFile")
    getModuleForFile :: proc(param0: CXTranslationUnit, param1: CXFile) -> CXModule ---

    @(link_name = "clang_Module_getASTFile")
    Module_getASTFile :: proc(Module: CXModule) -> CXFile ---

    @(link_name = "clang_Module_getParent")
    Module_getParent :: proc(Module: CXModule) -> CXModule ---

    @(link_name = "clang_Module_getName")
    Module_getName :: proc(Module: CXModule) -> CXString ---

    @(link_name = "clang_Module_getFullName")
    Module_getFullName :: proc(Module: CXModule) -> CXString ---

    @(link_name = "clang_Module_isSystem")
    Module_isSystem :: proc(Module: CXModule) -> i32 ---

    @(link_name = "clang_Module_getNumTopLevelHeaders")
    Module_getNumTopLevelHeaders :: proc(param0: CXTranslationUnit, Module: CXModule) -> u32 ---

    @(link_name = "clang_Module_getTopLevelHeader")
    Module_getTopLevelHeader :: proc(param0: CXTranslationUnit, Module: CXModule, Index: u32) -> CXFile ---

    @(link_name = "clang_CXXConstructor_isConvertingConstructor")
    XConstructor_isConvertingConstructor :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXConstructor_isCopyConstructor")
    XConstructor_isCopyConstructor :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXConstructor_isDefaultConstructor")
    XConstructor_isDefaultConstructor :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXConstructor_isMoveConstructor")
    XConstructor_isMoveConstructor :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXField_isMutable")
    XField_isMutable :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isDefaulted")
    XMethod_isDefaulted :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isDeleted")
    XMethod_isDeleted :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isPureVirtual")
    XMethod_isPureVirtual :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isStatic")
    XMethod_isStatic :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isVirtual")
    XMethod_isVirtual :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isCopyAssignmentOperator")
    XMethod_isCopyAssignmentOperator :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isMoveAssignmentOperator")
    XMethod_isMoveAssignmentOperator :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isExplicit")
    XMethod_isExplicit :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXRecord_isAbstract")
    XRecord_isAbstract :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_EnumDecl_isScoped")
    EnumDecl_isScoped :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_CXXMethod_isConst")
    XMethod_isConst :: proc(C: CXCursor) -> u32 ---

    @(link_name = "clang_getTemplateCursorKind")
    getTemplateCursorKind :: proc(C: CXCursor) -> CXCursorKind ---

    @(link_name = "clang_getSpecializedCursorTemplate")
    getSpecializedCursorTemplate :: proc(C: CXCursor) -> CXCursor ---

    @(link_name = "clang_getCursorReferenceNameRange")
    getCursorReferenceNameRange :: proc(C: CXCursor, NameFlags: u32, PieceIndex: u32) -> CXSourceRange ---

    @(link_name = "clang_getToken")
    getToken :: proc(TU: CXTranslationUnit, Location: CXSourceLocation) -> ^CXToken ---

    @(link_name = "clang_getTokenKind")
    getTokenKind :: proc(param0: CXToken) -> CXTokenKind ---

    @(link_name = "clang_getTokenSpelling")
    getTokenSpelling :: proc(param0: CXTranslationUnit, param1: CXToken) -> CXString ---

    @(link_name = "clang_getTokenLocation")
    getTokenLocation :: proc(param0: CXTranslationUnit, param1: CXToken) -> CXSourceLocation ---

    @(link_name = "clang_getTokenExtent")
    getTokenExtent :: proc(param0: CXTranslationUnit, param1: CXToken) -> CXSourceRange ---

    @(link_name = "clang_tokenize")
    tokenize :: proc(TU: CXTranslationUnit, Range: CXSourceRange, Tokens: ^[^]CXToken, NumTokens: [^]u32) ---

    @(link_name = "clang_annotateTokens")
    annotateTokens :: proc(TU: CXTranslationUnit, Tokens: [^]CXToken, NumTokens: u32, Cursors: [^]CXCursor) ---

    @(link_name = "clang_disposeTokens")
    disposeTokens :: proc(TU: CXTranslationUnit, Tokens: [^]CXToken, NumTokens: u32) ---

    @(link_name = "clang_getCursorKindSpelling")
    getCursorKindSpelling :: proc(Kind: CXCursorKind) -> CXString ---

    @(link_name = "clang_getDefinitionSpellingAndExtent")
    getDefinitionSpellingAndExtent :: proc(param0: CXCursor, startBuf: ^cstring, endBuf: ^cstring, startLine: ^u32, startColumn: ^u32, endLine: ^u32, endColumn: ^u32) ---

    @(link_name = "clang_enableStackTraces")
    enableStackTraces :: proc() ---

    @(link_name = "clang_executeOnThread")
    executeOnThread :: proc(fn: fn_func_ptr_anon_0, user_data: rawptr, stack_size: u32) ---

    @(link_name = "clang_getCompletionChunkKind")
    getCompletionChunkKind :: proc(completion_string: CXCompletionString, chunk_number: u32) -> CXCompletionChunkKind ---

    @(link_name = "clang_getCompletionChunkText")
    getCompletionChunkText :: proc(completion_string: CXCompletionString, chunk_number: u32) -> CXString ---

    @(link_name = "clang_getCompletionChunkCompletionString")
    getCompletionChunkCompletionString :: proc(completion_string: CXCompletionString, chunk_number: u32) -> CXCompletionString ---

    @(link_name = "clang_getNumCompletionChunks")
    getNumCompletionChunks :: proc(completion_string: CXCompletionString) -> u32 ---

    @(link_name = "clang_getCompletionPriority")
    getCompletionPriority :: proc(completion_string: CXCompletionString) -> u32 ---

    @(link_name = "clang_getCompletionAvailability")
    getCompletionAvailability :: proc(completion_string: CXCompletionString) -> CXAvailabilityKind ---

    @(link_name = "clang_getCompletionNumAnnotations")
    getCompletionNumAnnotations :: proc(completion_string: CXCompletionString) -> u32 ---

    @(link_name = "clang_getCompletionAnnotation")
    getCompletionAnnotation :: proc(completion_string: CXCompletionString, annotation_number: u32) -> CXString ---

    @(link_name = "clang_getCompletionParent")
    getCompletionParent :: proc(completion_string: CXCompletionString, kind: ^CXCursorKind) -> CXString ---

    @(link_name = "clang_getCompletionBriefComment")
    getCompletionBriefComment :: proc(completion_string: CXCompletionString) -> CXString ---

    @(link_name = "clang_getCursorCompletionString")
    getCursorCompletionString :: proc(cursor: CXCursor) -> CXCompletionString ---

    @(link_name = "clang_getCompletionNumFixIts")
    getCompletionNumFixIts :: proc(results: [^]CXCodeCompleteResults, completion_index: u32) -> u32 ---

    @(link_name = "clang_getCompletionFixIt")
    getCompletionFixIt :: proc(results: [^]CXCodeCompleteResults, completion_index: u32, fixit_index: u32, replacement_range: ^CXSourceRange) -> CXString ---

    @(link_name = "clang_defaultCodeCompleteOptions")
    defaultCodeCompleteOptions :: proc() -> u32 ---

    @(link_name = "clang_codeCompleteAt")
    codeCompleteAt :: proc(TU: CXTranslationUnit, complete_filename: cstring, complete_line: u32, complete_column: u32, unsaved_files: [^]CXUnsavedFile, num_unsaved_files: u32, options: u32) -> ^CXCodeCompleteResults ---

    @(link_name = "clang_sortCodeCompletionResults")
    sortCodeCompletionResults :: proc(Results: [^]CXCompletionResult, NumResults: u32) ---

    @(link_name = "clang_disposeCodeCompleteResults")
    disposeCodeCompleteResults :: proc(Results: [^]CXCodeCompleteResults) ---

    @(link_name = "clang_codeCompleteGetNumDiagnostics")
    codeCompleteGetNumDiagnostics :: proc(Results: [^]CXCodeCompleteResults) -> u32 ---

    @(link_name = "clang_codeCompleteGetDiagnostic")
    codeCompleteGetDiagnostic :: proc(Results: [^]CXCodeCompleteResults, Index: u32) -> CXDiagnostic ---

    @(link_name = "clang_codeCompleteGetContexts")
    codeCompleteGetContexts :: proc(Results: [^]CXCodeCompleteResults) -> u64 ---

    @(link_name = "clang_codeCompleteGetContainerKind")
    codeCompleteGetContainerKind :: proc(Results: [^]CXCodeCompleteResults, IsIncomplete: ^u32) -> CXCursorKind ---

    @(link_name = "clang_codeCompleteGetContainerUSR")
    codeCompleteGetContainerUSR :: proc(Results: [^]CXCodeCompleteResults) -> CXString ---

    @(link_name = "clang_codeCompleteGetObjCSelector")
    codeCompleteGetObjCSelector :: proc(Results: [^]CXCodeCompleteResults) -> CXString ---

    @(link_name = "clang_getClangVersion")
    getClangVersion :: proc() -> CXString ---

    @(link_name = "clang_toggleCrashRecovery")
    toggleCrashRecovery :: proc(isEnabled: u32) ---

    @(link_name = "clang_getInclusions")
    getInclusions :: proc(tu: CXTranslationUnit, visitor: CXInclusionVisitor, client_data: CXClientData) ---

    @(link_name = "clang_Cursor_Evaluate")
    Cursor_Evaluate :: proc(C: CXCursor) -> CXEvalResult ---

    @(link_name = "clang_EvalResult_getKind")
    EvalResult_getKind :: proc(E: CXEvalResult) -> CXEvalResultKind ---

    @(link_name = "clang_EvalResult_getAsInt")
    EvalResult_getAsInt :: proc(E: CXEvalResult) -> i32 ---

    @(link_name = "clang_EvalResult_getAsLongLong")
    EvalResult_getAsLongLong :: proc(E: CXEvalResult) -> i64 ---

    @(link_name = "clang_EvalResult_isUnsignedInt")
    EvalResult_isUnsignedInt :: proc(E: CXEvalResult) -> u32 ---

    @(link_name = "clang_EvalResult_getAsUnsigned")
    EvalResult_getAsUnsigned :: proc(E: CXEvalResult) -> u64 ---

    @(link_name = "clang_EvalResult_getAsDouble")
    EvalResult_getAsDouble :: proc(E: CXEvalResult) -> f64 ---

    @(link_name = "clang_EvalResult_getAsStr")
    EvalResult_getAsStr :: proc(E: CXEvalResult) -> cstring ---

    @(link_name = "clang_EvalResult_dispose")
    EvalResult_dispose :: proc(E: CXEvalResult) ---

    @(link_name = "clang_getRemappings")
    getRemappings :: proc(path: cstring) -> CXRemapping ---

    @(link_name = "clang_getRemappingsFromFileList")
    getRemappingsFromFileList :: proc(filePaths: [^]cstring, numFiles: u32) -> CXRemapping ---

    @(link_name = "clang_remap_getNumFiles")
    remap_getNumFiles :: proc(param0: CXRemapping) -> u32 ---

    @(link_name = "clang_remap_getFilenames")
    remap_getFilenames :: proc(param0: CXRemapping, index: u32, original: ^CXString, transformed: ^CXString) ---

    @(link_name = "clang_remap_dispose")
    remap_dispose :: proc(param0: CXRemapping) ---

    @(link_name = "clang_findReferencesInFile")
    findReferencesInFile :: proc(cursor: CXCursor, file: CXFile, visitor: CXCursorAndRangeVisitor) -> CXResult ---

    @(link_name = "clang_findIncludesInFile")
    findIncludesInFile :: proc(TU: CXTranslationUnit, file: CXFile, visitor: CXCursorAndRangeVisitor) -> CXResult ---

    @(link_name = "clang_findReferencesInFileWithBlock")
    findReferencesInFileWithBlock :: proc(param0: CXCursor, param1: CXFile, param2: CXCursorAndRangeVisitorBlock) -> CXResult ---

    @(link_name = "clang_findIncludesInFileWithBlock")
    findIncludesInFileWithBlock :: proc(param0: CXTranslationUnit, param1: CXFile, param2: CXCursorAndRangeVisitorBlock) -> CXResult ---

    @(link_name = "clang_index_isEntityObjCContainerKind")
    index_isEntityObjCContainerKind :: proc(param0: CXIdxEntityKind) -> i32 ---

    @(link_name = "clang_index_getObjCContainerDeclInfo")
    index_getObjCContainerDeclInfo :: proc(param0: ^CXIdxDeclInfo) -> ^CXIdxObjCContainerDeclInfo ---

    @(link_name = "clang_index_getObjCInterfaceDeclInfo")
    index_getObjCInterfaceDeclInfo :: proc(param0: ^CXIdxDeclInfo) -> ^CXIdxObjCInterfaceDeclInfo ---

    @(link_name = "clang_index_getObjCCategoryDeclInfo")
    index_getObjCCategoryDeclInfo :: proc(param0: ^CXIdxDeclInfo) -> ^CXIdxObjCCategoryDeclInfo ---

    @(link_name = "clang_index_getObjCProtocolRefListInfo")
    index_getObjCProtocolRefListInfo :: proc(param0: ^CXIdxDeclInfo) -> ^CXIdxObjCProtocolRefListInfo ---

    @(link_name = "clang_index_getObjCPropertyDeclInfo")
    index_getObjCPropertyDeclInfo :: proc(param0: ^CXIdxDeclInfo) -> ^CXIdxObjCPropertyDeclInfo ---

    @(link_name = "clang_index_getIBOutletCollectionAttrInfo")
    index_getIBOutletCollectionAttrInfo :: proc(param0: ^CXIdxAttrInfo) -> ^CXIdxIBOutletCollectionAttrInfo ---

    @(link_name = "clang_index_getCXXClassDeclInfo")
    index_getCXXClassDeclInfo :: proc(param0: ^CXIdxDeclInfo) -> ^CXIdxCXXClassDeclInfo ---

    @(link_name = "clang_index_getClientContainer")
    index_getClientContainer :: proc(param0: ^CXIdxContainerInfo) -> CXIdxClientContainer ---

    @(link_name = "clang_index_setClientContainer")
    index_setClientContainer :: proc(param0: ^CXIdxContainerInfo, param1: CXIdxClientContainer) ---

    @(link_name = "clang_index_getClientEntity")
    index_getClientEntity :: proc(param0: ^CXIdxEntityInfo) -> CXIdxClientEntity ---

    @(link_name = "clang_index_setClientEntity")
    index_setClientEntity :: proc(param0: ^CXIdxEntityInfo, param1: CXIdxClientEntity) ---

    @(link_name = "clang_IndexAction_create")
    IndexAction_create :: proc(CIdx: CXIndex) -> CXIndexAction ---

    @(link_name = "clang_IndexAction_dispose")
    IndexAction_dispose :: proc(param0: CXIndexAction) ---

    @(link_name = "clang_indexSourceFile")
    indexSourceFile :: proc(param0: CXIndexAction, client_data: CXClientData, index_callbacks: [^]IndexerCallbacks, index_callbacks_size: u32, index_options: u32, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]CXUnsavedFile, num_unsaved_files: u32, out_TU: ^CXTranslationUnit, TU_options: u32) -> i32 ---

    @(link_name = "clang_indexSourceFileFullArgv")
    indexSourceFileFullArgv :: proc(param0: CXIndexAction, client_data: CXClientData, index_callbacks: [^]IndexerCallbacks, index_callbacks_size: u32, index_options: u32, source_filename: cstring, command_line_args: [^]cstring, num_command_line_args: i32, unsaved_files: [^]CXUnsavedFile, num_unsaved_files: u32, out_TU: ^CXTranslationUnit, TU_options: u32) -> i32 ---

    @(link_name = "clang_indexTranslationUnit")
    indexTranslationUnit :: proc(param0: CXIndexAction, client_data: CXClientData, index_callbacks: [^]IndexerCallbacks, index_callbacks_size: u32, index_options: u32, param5: CXTranslationUnit) -> i32 ---

    @(link_name = "clang_indexLoc_getFileLocation")
    indexLoc_getFileLocation :: proc(loc: CXIdxLoc, indexFile: ^CXIdxClientFile, file: ^CXFile, line: ^u32, column: ^u32, offset: ^u32) ---

    @(link_name = "clang_indexLoc_getCXSourceLocation")
    indexLoc_getCXSourceLocation :: proc(loc: CXIdxLoc) -> CXSourceLocation ---

    @(link_name = "clang_Type_visitFields")
    Type_visitFields :: proc(T: CXType, visitor: CXFieldVisitor, client_data: CXClientData) -> u32 ---

    @(link_name = "clang_getBinaryOperatorKindSpelling")
    getBinaryOperatorKindSpelling :: proc(kind: CXBinaryOperatorKind) -> CXString ---

    @(link_name = "clang_getCursorBinaryOperatorKind")
    getCursorBinaryOperatorKind :: proc(cursor: CXCursor) -> CXBinaryOperatorKind ---

    @(link_name = "clang_getUnaryOperatorKindSpelling")
    getUnaryOperatorKindSpelling :: proc(kind: CXUnaryOperatorKind) -> CXString ---

    @(link_name = "clang_getCursorUnaryOperatorKind")
    getCursorUnaryOperatorKind :: proc(cursor: CXCursor) -> CXUnaryOperatorKind ---

    @(link_name = "clang_CXRewriter_create")
    Rewriter_create :: proc(TU: CXTranslationUnit) -> CXRewriter ---

    @(link_name = "clang_CXRewriter_insertTextBefore")
    Rewriter_insertTextBefore :: proc(Rew: CXRewriter, Loc: CXSourceLocation, Insert: cstring) ---

    @(link_name = "clang_CXRewriter_replaceText")
    Rewriter_replaceText :: proc(Rew: CXRewriter, ToBeReplaced: CXSourceRange, Replacement: cstring) ---

    @(link_name = "clang_CXRewriter_removeText")
    Rewriter_removeText :: proc(Rew: CXRewriter, ToBeRemoved: CXSourceRange) ---

    @(link_name = "clang_CXRewriter_overwriteChangedFiles")
    Rewriter_overwriteChangedFiles :: proc(Rew: CXRewriter) -> i32 ---

    @(link_name = "clang_CXRewriter_writeMainFileToStdOut")
    Rewriter_writeMainFileToStdOut :: proc(Rew: CXRewriter) ---

    @(link_name = "clang_CXRewriter_dispose")
    Rewriter_dispose :: proc(Rew: CXRewriter) ---

}

when (ODIN_OS == .Windows) {

CXUnsavedFile :: struct {
    Filename: cstring,
    Contents: cstring,
    Length: u32,
}
CXTUResourceUsageEntry :: struct {
    kind: CXTUResourceUsageKind,
    amount: u32,
}
__time_t :: i32

} else {

CXUnsavedFile :: struct {
    Filename: cstring,
    Contents: cstring,
    Length: u64,
}
CXTUResourceUsageEntry :: struct {
    kind: CXTUResourceUsageKind,
    amount: u64,
}
__time_t :: i64

}

