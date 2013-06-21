.class public Lgnu/kawa/lispexpr/LangObjType;
.super Lgnu/bytecode/ObjectType;
.source "LangObjType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field private static final CLASSTYPE_TYPE_CODE:I = 0x6

.field private static final CLASS_TYPE_CODE:I = 0x4

.field private static final FILEPATH_TYPE_CODE:I = 0x2

.field private static final INTEGER_TYPE_CODE:I = 0x7

.field private static final LIST_TYPE_CODE:I = 0x8

.field private static final PATH_TYPE_CODE:I = 0x1

.field private static final STRING_TYPE_CODE:I = 0xa

.field private static final TYPE_TYPE_CODE:I = 0x5

.field public static final URIType:Lgnu/kawa/lispexpr/LangObjType; = null

.field private static final URI_TYPE_CODE:I = 0x3

.field static final VARARGS_SUFFIX:Ljava/lang/String; = ""

.field private static final VECTOR_TYPE_CODE:I = 0x9

.field public static final filepathType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final integerType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final listType:Lgnu/kawa/lispexpr/LangObjType;

.field static makeFilepathProc:Lgnu/expr/PrimProcedure;

.field static makePathProc:Lgnu/expr/PrimProcedure;

.field static makeURIProc:Lgnu/expr/PrimProcedure;

.field public static final pathType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final stringType:Lgnu/kawa/lispexpr/LangObjType;

.field static final typeArithmetic:Lgnu/bytecode/ClassType;

.field public static final typeClass:Lgnu/kawa/lispexpr/LangObjType;

.field public static final typeClassType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final typeLangObjType:Lgnu/bytecode/ClassType;

.field public static final typeType:Lgnu/kawa/lispexpr/LangObjType;

.field public static final vectorType:Lgnu/kawa/lispexpr/LangObjType;


# instance fields
.field implementationType:Lgnu/bytecode/ClassType;

.field final typeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-string v7, "gnu.text.URIPath"

    const-string v6, "gnu.text.Path"

    const-string v5, "gnu.text.FilePath"

    .line 28
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "path"

    const-string v2, "gnu.text.Path"

    invoke-direct {v0, v1, v6, v4}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    .line 31
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "filepath"

    const-string v2, "gnu.text.FilePath"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    .line 34
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "URI"

    const-string v2, "gnu.text.URIPath"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    .line 38
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "class"

    const-string v2, "java.lang.Class"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    .line 41
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "type"

    const-string v2, "gnu.bytecode.Type"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    .line 44
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "class-type"

    const-string v2, "gnu.bytecode.ClassType"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    .line 48
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "integer"

    const-string v2, "gnu.math.IntNum"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    .line 52
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "vector"

    const-string v2, "gnu.lists.FVector"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    .line 56
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "string"

    const-string v2, "java.lang.CharSequence"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    .line 66
    new-instance v0, Lgnu/kawa/lispexpr/LangObjType;

    const-string v1, "list"

    const-string v2, "gnu.lists.LList"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    .line 70
    const-string v0, "gnu.kawa.functions.Arithmetic"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeArithmetic:Lgnu/bytecode/ClassType;

    .line 144
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.text.Path"

    const-string v1, "valueOf"

    invoke-direct {v0, v6, v1, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makePathProc:Lgnu/expr/PrimProcedure;

    .line 146
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.text.FilePath"

    const-string v1, "makeFilePath"

    invoke-direct {v0, v5, v1, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeFilepathProc:Lgnu/expr/PrimProcedure;

    .line 148
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.text.URIPath"

    const-string v1, "makeURI"

    invoke-direct {v0, v7, v1, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeURIProc:Lgnu/expr/PrimProcedure;

    .line 378
    const-string v0, "gnu.kawa.lispexpr.LangObjType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "implClass"
    .parameter "typeCode"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    .line 77
    iput p3, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    .line 78
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LangObjType;->setSignature(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 4
    .parameter "value"

    .prologue
    .line 170
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    .line 171
    .local v0, ival:Lgnu/math/IntNum;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 172
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x4

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-direct {v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V

    throw v1

    .line 173
    :cond_0
    return-object v0
.end method

.method public static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 4
    .parameter "obj"

    .prologue
    .line 192
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassOrNull(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 193
    .local v0, coerced:Ljava/lang/Class;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 194
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot cast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_0
    return-object v0
.end method

.method public static coerceToClassOrNull(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .parameter "type"

    .prologue
    .line 178
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Ljava/lang/Class;

    .end local p0
    move-object v0, p0

    .line 187
    :goto_0
    return-object v0

    .line 180
    .restart local p0
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 182
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lgnu/expr/PairClassType;

    if-nez v0, :cond_1

    .line 184
    check-cast p0, Lgnu/bytecode/ClassType;

    .end local p0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 187
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    .locals 4
    .parameter "obj"

    .prologue
    .line 214
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 215
    .local v0, coerced:Lgnu/bytecode/ClassType;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 216
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot cast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to class-type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    return-object v0
.end method

.method public static coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    .locals 3
    .parameter "type"

    .prologue
    .line 200
    instance-of v2, p0, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_0

    .line 201
    check-cast p0, Lgnu/bytecode/ClassType;

    .end local p0
    move-object v2, p0

    .line 209
    :goto_0
    return-object v2

    .line 202
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 204
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 205
    .local v0, language:Lgnu/expr/Language;
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 206
    .local v1, t:Lgnu/bytecode/Type;
    instance-of v2, v1, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    .line 207
    check-cast v1, Lgnu/bytecode/ClassType;

    .end local v1           #t:Lgnu/bytecode/Type;
    move-object v2, v1

    goto :goto_0

    .line 209
    .end local v0           #language:Lgnu/expr/Language;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 4
    .parameter "obj"

    .prologue
    .line 234
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 235
    .local v0, coerced:Lgnu/bytecode/Type;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 236
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot cast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    return-object v0
.end method

.method public static coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "type"

    .prologue
    .line 222
    instance-of v1, p0, Lgnu/bytecode/Type;

    if-eqz v1, :cond_0

    .line 223
    check-cast p0, Lgnu/bytecode/Type;

    .end local p0
    move-object v1, p0

    .line 229
    :goto_0
    return-object v1

    .line 224
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 227
    .local v0, language:Lgnu/expr/Language;
    check-cast p0, Ljava/lang/Class;

    .end local p0
    invoke-virtual {v0, p0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0

    .line 229
    .end local v0           #language:Lgnu/expr/Language;
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 301
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v0, :pswitch_data_0

    .line 321
    invoke-super {p0, p1}, Lgnu/bytecode/ObjectType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 304
    :pswitch_0
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_1
    invoke-static {p1}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_4
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 314
    :pswitch_5
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_6
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method coercionOrNullMethod()Lgnu/bytecode/Method;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    .line 244
    .local v0, methodDeclaringClass:Lgnu/bytecode/ClassType;
    iget v2, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v2, :pswitch_data_0

    .line 272
    const/4 v2, 0x0

    .line 274
    :goto_0
    return-object v2

    .line 247
    :pswitch_0
    const-string v1, "coerceToPathOrNull"

    .line 274
    .local v1, mname:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_0

    .line 250
    .end local v1           #mname:Ljava/lang/String;
    :pswitch_1
    const-string v1, "coerceToFilePathOrNull"

    .line 251
    .restart local v1       #mname:Ljava/lang/String;
    goto :goto_1

    .line 253
    .end local v1           #mname:Ljava/lang/String;
    :pswitch_2
    const-string v1, "coerceToURIPathOrNull"

    .line 254
    .restart local v1       #mname:Ljava/lang/String;
    goto :goto_1

    .line 256
    .end local v1           #mname:Ljava/lang/String;
    :pswitch_3
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    .line 257
    const-string v1, "coerceToClassOrNull"

    .line 258
    .restart local v1       #mname:Ljava/lang/String;
    goto :goto_1

    .line 260
    .end local v1           #mname:Ljava/lang/String;
    :pswitch_4
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    .line 261
    const-string v1, "coerceToClassTypeOrNull"

    .line 262
    .restart local v1       #mname:Ljava/lang/String;
    goto :goto_1

    .line 264
    .end local v1           #mname:Ljava/lang/String;
    :pswitch_5
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    .line 265
    const-string v1, "coerceToTypeOrNull"

    .line 266
    .restart local v1       #mname:Ljava/lang/String;
    goto :goto_1

    .line 268
    .end local v1           #mname:Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    .line 269
    const-string v1, "asIntNumOrNull"

    .line 270
    .restart local v1       #mname:Ljava/lang/String;
    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 4
    .parameter "other"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 85
    iget v1, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v1, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    :goto_1
    return v1

    .line 88
    :pswitch_0
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-eq p1, v1, :cond_1

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1

    .line 94
    :pswitch_1
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_3

    :cond_2
    move v1, v3

    .line 97
    goto :goto_1

    .line 99
    :cond_3
    :pswitch_2
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_4

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_5

    :cond_4
    move v1, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    if-eq p1, v1, :cond_6

    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    iget-object v1, v1, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_0

    :cond_6
    move v1, v2

    .line 102
    goto :goto_1

    .line 105
    :pswitch_3
    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 108
    .local v0, sig1:C
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v1, v3

    .line 111
    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .parameter "code"

    .prologue
    const/4 v2, 0x1

    .line 327
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v0, :pswitch_data_0

    .line 347
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/PrimProcedure;

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 349
    :goto_0
    return-void

    .line 330
    .restart local p0
    :pswitch_0
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceToClass"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 333
    :pswitch_1
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceToClassType"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 336
    :pswitch_2
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceToType"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 339
    :pswitch_3
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->typeLangObjType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceIntNum"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 344
    :pswitch_4
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 154
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 166
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 160
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "incoming"
    .parameter "decl"
    .parameter "comp"

    .prologue
    .line 279
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 280
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangObjType;->coercionOrNullMethod()Lgnu/bytecode/Method;

    move-result-object v1

    .line 283
    .local v1, method:Lgnu/bytecode/Method;
    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 285
    :cond_1
    if-eqz p2, :cond_2

    .line 287
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 288
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 290
    :cond_2
    if-eqz v1, :cond_3

    .line 291
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_3
    iget-object v2, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 295
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    goto :goto_0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 359
    iget v0, p0, Lgnu/kawa/lispexpr/LangObjType;->typeCode:I

    packed-switch v0, :pswitch_data_0

    .line 374
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 362
    :pswitch_1
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->makePathProc:Lgnu/expr/PrimProcedure;

    goto :goto_0

    .line 364
    :pswitch_2
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeFilepathProc:Lgnu/expr/PrimProcedure;

    goto :goto_0

    .line 366
    :pswitch_3
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->makeURIProc:Lgnu/expr/PrimProcedure;

    goto :goto_0

    .line 368
    :pswitch_4
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "kawa.lib.vectors"

    const-string v2, "$make$vector$"

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 370
    :pswitch_5
    sget-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    goto :goto_0

    .line 372
    :pswitch_6
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "kawa.lib.strings"

    const-string v2, "$make$string$"

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"
    .parameter "mask"

    .prologue
    .line 120
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "arg_types"

    .prologue
    .line 125
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I
    .locals 1
    .parameter "filter"
    .parameter "searchSupers"
    .parameter "result"
    .parameter "context"

    .prologue
    .line 131
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangObjType;->implementationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
