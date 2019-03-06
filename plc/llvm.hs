getLLVMType :: TypeNames.Type -> FFI.TypeRef
getLLVMType TypeInt = FFI.int64Type
getLLVMType TypeBool = FFI.int1Type
getLLVMType _ = error("Unimplemented type")
 
getArgTypes :: FormalList -> [FFI.TypeRef]
getArgTypes FEmpty = []
getArgTypes (FormalList theType ident FEmpty) = [(getLLVMType theType)]
getArgTypes (FormalList theType ident rest) =
    [(getLLVMType theType)] ++ (getArgTypes rest) 
 
methodType = Util.functionType False (getLLVMType theType) (getArgTypes formalList)

method <- Util.addFunction m FFI.ExternalLinkage methodName methodType

bld <- U.createBuilder
entry <- U.appendBasicBlock method "entry"
U.positionAtEnd bld entry