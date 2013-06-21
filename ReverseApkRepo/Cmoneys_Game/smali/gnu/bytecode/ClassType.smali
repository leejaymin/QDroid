.class public Lgnu/bytecode/ClassType;
.super Lgnu/bytecode/ObjectType;
.source "ClassType.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Ljava/io/Externalizable;
.implements Lgnu/bytecode/Member;


# static fields
.field public static final JDK_1_1_VERSION:I = 0x2d0003

.field public static final JDK_1_2_VERSION:I = 0x2e0000

.field public static final JDK_1_3_VERSION:I = 0x2f0000

.field public static final JDK_1_4_VERSION:I = 0x300000

.field public static final JDK_1_5_VERSION:I = 0x310000

.field public static final JDK_1_6_VERSION:I = 0x320000

.field public static final JDK_1_7_VERSION:I = 0x330000

.field public static final noClasses:[Lgnu/bytecode/ClassType;


# instance fields
.field Code_name_index:I

.field ConstantValue_name_index:I

.field LineNumberTable_name_index:I

.field LocalVariableTable_name_index:I

.field access_flags:I

.field attributes:Lgnu/bytecode/Attribute;

.field classfileFormatVersion:I

.field constants:Lgnu/bytecode/ConstantPool;

.field public constructor:Lgnu/bytecode/Method;

.field emitDebugInfo:Z

.field enclosingMember:Lgnu/bytecode/Member;

.field fields:Lgnu/bytecode/Field;

.field fields_count:I

.field firstInnerClass:Lgnu/bytecode/ClassType;

.field interfaceIndexes:[I

.field interfaces:[Lgnu/bytecode/ClassType;

.field last_field:Lgnu/bytecode/Field;

.field last_method:Lgnu/bytecode/Method;

.field methods:Lgnu/bytecode/Method;

.field methods_count:I

.field nextInnerClass:Lgnu/bytecode/ClassType;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field superClass:Lgnu/bytecode/ClassType;

.field superClassIndex:I

.field thisClassIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    const v0, 0x2d0003

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 475
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "class_name"

    .prologue
    .line 479
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    const v0, 0x2d0003

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 480
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    invoke-static {p0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    return-object p0
.end method

.method public static make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "name"
    .parameter "superClass"

    .prologue
    .line 59
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 60
    .local v0, type:Lgnu/bytecode/ClassType;
    iget-object v1, v0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 62
    :cond_0
    return-object v0
.end method

.method public static to_utf8(Ljava/lang/String;)[B
    .locals 10
    .parameter "str"

    .prologue
    const/16 v9, 0x7ff

    const/16 v8, 0x7f

    .line 1169
    if-nez p0, :cond_0

    .line 1170
    const/4 v7, 0x0

    .line 1197
    :goto_0
    return-object v7

    .line 1171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1172
    .local v5, str_len:I
    const/4 v6, 0x0

    .line 1173
    .local v6, utf_len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 1174
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1175
    .local v1, c:I
    if-lez v1, :cond_1

    if-gt v1, v8, :cond_1

    .line 1176
    add-int/lit8 v6, v6, 0x1

    .line 1173
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1177
    :cond_1
    if-gt v1, v9, :cond_2

    .line 1178
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 1180
    :cond_2
    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 1182
    .end local v1           #c:I
    :cond_3
    new-array v0, v6, [B

    .line 1183
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 1184
    .local v3, j:I
    const/4 v2, 0x0

    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_3
    if-ge v2, v5, :cond_6

    .line 1185
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1186
    .restart local v1       #c:I
    if-lez v1, :cond_4

    if-gt v1, v8, :cond_4

    .line 1187
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    int-to-byte v7, v1

    aput-byte v7, v0, v4

    .line 1184
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_3

    .line 1188
    :cond_4
    if-gt v1, v9, :cond_5

    .line 1189
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 1190
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    shr-int/lit8 v7, v1, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto :goto_4

    .line 1192
    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 1193
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .restart local v4       #j:I
    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 1194
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    shr-int/lit8 v7, v1, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    goto :goto_4

    .end local v1           #c:I
    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_6
    move-object v7, v0

    .line 1197
    goto :goto_0
.end method


# virtual methods
.method addEnclosingMember()V
    .locals 6

    .prologue
    .line 206
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v4, v4, 0x18

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 209
    .local v0, clas:Ljava/lang/Class;
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 213
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    .line 214
    .local v1, dclas:Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-nez v4, :cond_3

    .line 218
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 219
    .local v3, rmeth:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 225
    .local v2, rcons:Ljava/lang/reflect/Constructor;
    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    goto :goto_0

    .line 231
    .end local v2           #rcons:Ljava/lang/reflect/Constructor;
    .end local v3           #rmeth:Ljava/lang/reflect/Method;
    :cond_3
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    goto :goto_0
.end method

.method public addField()Lgnu/bytecode/Field;
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    return-object v0
.end method

.method public addField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 573
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    .line 574
    .local v0, field:Lgnu/bytecode/Field;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 575
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    .line 579
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    .line 580
    .local v0, field:Lgnu/bytecode/Field;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p2}, Lgnu/bytecode/Field;->setType(Lgnu/bytecode/Type;)V

    .line 582
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "flags"

    .prologue
    .line 587
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 588
    .local v0, field:Lgnu/bytecode/Field;
    iput p3, v0, Lgnu/bytecode/Field;->flags:I

    .line 589
    return-object v0
.end method

.method public addFields()V
    .locals 9

    .prologue
    .line 598
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 602
    .local v0, clas:Ljava/lang/Class;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 608
    .local v4, fields:[Ljava/lang/reflect/Field;
    :goto_0
    array-length v1, v4

    .line 609
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 611
    aget-object v3, v4, v5

    .line 612
    .local v3, field:Ljava/lang/reflect/Field;
    const-string v6, "this$0"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 613
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 614
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    .line 609
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 604
    .end local v1           #count:I
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v4           #fields:[Ljava/lang/reflect/Field;
    .end local v5           #i:I
    :catch_0
    move-exception v2

    .line 606
    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .restart local v4       #fields:[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 617
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v1       #count:I
    .restart local v5       #i:I
    :cond_1
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 618
    return-void
.end method

.method public addInterface(Lgnu/bytecode/ClassType;)V
    .locals 5
    .parameter "newInterface"

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 450
    :cond_0
    const/4 v2, 0x0

    .line 451
    .local v2, oldCount:I
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/ClassType;

    iput-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 463
    :goto_0
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aput-object p1, v3, v2

    .line 464
    :goto_1
    return-void

    .line 455
    .end local v2           #oldCount:I
    :cond_1
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v2, v3

    .line 456
    .restart local v2       #oldCount:I
    move v0, v2

    .local v0, i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 457
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_2

    goto :goto_1

    .line 459
    :cond_3
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lgnu/bytecode/ClassType;

    .line 460
    .local v1, newInterfaces:[Lgnu/bytecode/ClassType;
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iput-object v1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public addMemberClass(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "member"

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, prev:Lgnu/bytecode/ClassType;
    iget-object v0, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .line 155
    .local v0, entry:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v0, :cond_1

    .line 157
    if-ne v0, p1, :cond_0

    .line 166
    :goto_1
    return-void

    .line 159
    :cond_0
    move-object v1, v0

    .line 160
    iget-object v0, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 162
    :cond_1
    if-nez v1, :cond_2

    .line 163
    iput-object p1, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 165
    :cond_2
    iput-object p1, v1, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_1
.end method

.method public addMemberClasses()V
    .locals 7

    .prologue
    .line 241
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v5, v5, 0x14

    const/16 v6, 0x10

    if-eq v5, v6, :cond_1

    .line 255
    :cond_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 244
    .local v0, clas:Ljava/lang/Class;
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v3

    .line 246
    .local v3, memberClasses:[Ljava/lang/Class;
    array-length v4, v3

    .line 247
    .local v4, numMembers:I
    if-lez v4, :cond_0

    .line 249
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 251
    aget-object v5, v3, v1

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 252
    .local v2, member:Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method addMethod()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 636
    new-instance v0, Lgnu/bytecode/Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    return-object v0
.end method

.method public addMethod(Ljava/lang/String;)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 644
    new-instance v0, Lgnu/bytecode/Method;

    invoke-direct {v0, p0, p2}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    .line 645
    .local v0, method:Lgnu/bytecode/Method;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Method;->setName(Ljava/lang/String;)V

    .line 646
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 3
    .parameter "name"
    .parameter "flags"
    .parameter "arg_types"
    .parameter "return_type"

    .prologue
    .line 663
    invoke-virtual {p0, p1, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    .line 664
    .local v0, method:Lgnu/bytecode/Method;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lgnu/bytecode/Method;->access_flags:I

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_0

    move-object v1, v0

    .line 671
    .end local v0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    :goto_0
    return-object v1

    .line 668
    .end local v1           #method:Lgnu/bytecode/Method;
    .restart local v0       #method:Lgnu/bytecode/Method;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 669
    iput-object p3, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 670
    iput-object p4, v0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    move-object v1, v0

    .line 671
    .end local v0           #method:Lgnu/bytecode/Method;
    .restart local v1       #method:Lgnu/bytecode/Method;
    goto :goto_0
.end method

.method public addMethod(Ljava/lang/String;Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "signature"
    .parameter "flags"

    .prologue
    .line 699
    invoke-virtual {p0, p1, p3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 700
    .local v0, meth:Lgnu/bytecode/Method;
    invoke-virtual {v0, p2}, Lgnu/bytecode/Method;->setSignature(Ljava/lang/String;)V

    .line 701
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;
    .locals 1
    .parameter "name"
    .parameter "arg_types"
    .parameter "return_type"
    .parameter "flags"

    .prologue
    .line 653
    invoke-virtual {p0, p1, p4, p2, p3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "method"

    .prologue
    .line 688
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 689
    .local v3, paramTypes:[Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 690
    .local v2, modifiers:I
    array-length v1, v3

    .line 691
    .local v1, j:I
    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 692
    .local v0, args:[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 693
    aget-object v4, v3, v1

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_0

    .line 694
    :cond_0
    const-string v4, "<init>"

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v4, v2, v0, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    return-object v4
.end method

.method public addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "method"

    .prologue
    .line 676
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 677
    .local v2, modifiers:I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 678
    .local v3, paramTypes:[Ljava/lang/Class;
    array-length v1, v3

    .line 679
    .local v1, j:I
    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 680
    .local v0, args:[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 681
    aget-object v5, v3, v1

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    aput-object v5, v0, v1

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 683
    .local v4, rtype:Lgnu/bytecode/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2, v0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    return-object v5
.end method

.method public addMethods(Ljava/lang/Class;)V
    .locals 7
    .parameter "clas"

    .prologue
    .line 948
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 953
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 959
    .local v5, methods:[Ljava/lang/reflect/Method;
    :goto_0
    array-length v1, v5

    .line 960
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 962
    aget-object v4, v5, v3

    .line 963
    .local v4, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 960
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 955
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #methods:[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 957
    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .restart local v5       #methods:[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 965
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #method:Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    goto :goto_2

    .line 971
    .end local v4           #method:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 977
    .local v0, cmethods:[Ljava/lang/reflect/Constructor;
    :goto_3
    array-length v1, v0

    .line 978
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_3

    .line 980
    aget-object v4, v0, v3

    .line 981
    .local v4, method:Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 978
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 973
    .end local v0           #cmethods:[Ljava/lang/reflect/Constructor;
    .end local v4           #method:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v2

    .line 975
    .restart local v2       #ex:Ljava/lang/SecurityException;
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .restart local v0       #cmethods:[Ljava/lang/reflect/Constructor;
    goto :goto_3

    .line 983
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v4       #method:Ljava/lang/reflect/Constructor;
    :cond_2
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;

    goto :goto_5

    .line 985
    .end local v4           #method:Ljava/lang/reflect/Constructor;
    :cond_3
    return-void
.end method

.method public final addModifiers(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 114
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public cleanupAfterCompilation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1318
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v0, meth:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {v0}, Lgnu/bytecode/Method;->cleanupAfterCompilation()V

    .line 1318
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v0

    goto :goto_0

    .line 1321
    :cond_0
    iput-object v1, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1322
    iput-object v1, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    .line 1323
    iput-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 1324
    return-void
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "other"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1256
    sget-object v3, Lgnu/bytecode/ClassType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v3, :cond_0

    move v3, v4

    .line 1274
    :goto_0
    return v3

    .line 1258
    :cond_0
    instance-of v3, p1, Lgnu/bytecode/ClassType;

    if-nez v3, :cond_1

    .line 1259
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    invoke-static {v3}, Lgnu/bytecode/ClassType;->swappedCompareResult(I)I

    move-result v3

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1261
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1262
    const/4 v3, 0x0

    goto :goto_0

    .line 1263
    :cond_2
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v1, v0

    .line 1264
    .local v1, cother:Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    .line 1265
    goto :goto_0

    .line 1266
    :cond_3
    invoke-virtual {v1, p0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 1267
    goto :goto_0

    .line 1268
    :cond_4
    sget-object v3, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_6

    .line 1269
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0

    .line 1270
    :cond_6
    sget-object v3, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_8

    .line 1271
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_7

    move v3, v4

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_0

    .line 1272
    :cond_8
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1273
    :cond_9
    const/4 v3, -0x2

    goto :goto_0

    .line 1274
    :cond_a
    const/4 v3, -0x3

    goto :goto_0
.end method

.method public final countMethods(Lgnu/bytecode/Filter;I)I
    .locals 2
    .parameter "filter"
    .parameter "searchSupers"

    .prologue
    .line 734
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I

    move-result v0

    return v0
.end method

.method public doFixups()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1015
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v11, :cond_0

    .line 1016
    new-instance v11, Lgnu/bytecode/ConstantPool;

    invoke-direct {v11}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1017
    :cond_0
    iget v11, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    if-nez v11, :cond_1

    .line 1018
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v11, p0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v11

    iget v11, v11, Lgnu/bytecode/CpoolClass;->index:I

    iput v11, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 1019
    :cond_1
    iget-object v11, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-ne v11, p0, :cond_2

    .line 1020
    const/4 v11, 0x0

    check-cast v11, Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v11}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1021
    :cond_2
    iget v11, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-gez v11, :cond_3

    .line 1022
    iget-object v11, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v11, :cond_4

    move v11, v14

    :goto_0
    iput v11, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 1024
    :cond_3
    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v11, :cond_5

    .line 1026
    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v10, v11

    .line 1027
    .local v10, n:I
    new-array v11, v10, [I

    iput-object v11, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 1028
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v10, :cond_5

    .line 1029
    iget-object v11, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    iget-object v12, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v13, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v12

    iget v12, v12, Lgnu/bytecode/CpoolClass;->index:I

    aput v12, v11, v6

    .line 1028
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1022
    .end local v6           #i:I
    .end local v10           #n:I
    :cond_4
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v12, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v11, v12}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v11

    iget v11, v11, Lgnu/bytecode/CpoolClass;->index:I

    goto :goto_0

    .line 1031
    :cond_5
    iget-object v5, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .local v5, field:Lgnu/bytecode/Field;
    :goto_2
    if-eqz v5, :cond_6

    .line 1032
    invoke-virtual {v5, p0}, Lgnu/bytecode/Field;->assign_constants(Lgnu/bytecode/ClassType;)V

    .line 1031
    iget-object v5, v5, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_2

    .line 1034
    :cond_6
    iget-object v9, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v9, method:Lgnu/bytecode/Method;
    :goto_3
    if-eqz v9, :cond_7

    .line 1035
    invoke-virtual {v9}, Lgnu/bytecode/Method;->assignConstants()V

    .line 1034
    iget-object v9, v9, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_3

    .line 1036
    :cond_7
    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v11, v11, Lgnu/bytecode/Method;

    if-eqz v11, :cond_a

    .line 1038
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v11

    invoke-static {v11}, Lgnu/bytecode/EnclosingMethodAttr;->getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;

    move-result-object v1

    .line 1040
    .local v1, attr:Lgnu/bytecode/EnclosingMethodAttr;
    if-nez v1, :cond_8

    .line 1041
    new-instance v1, Lgnu/bytecode/EnclosingMethodAttr;

    .end local v1           #attr:Lgnu/bytecode/EnclosingMethodAttr;
    invoke-direct {v1, p0}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 1042
    .restart local v1       #attr:Lgnu/bytecode/EnclosingMethodAttr;
    :cond_8
    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v11, Lgnu/bytecode/Method;

    iput-object v11, v1, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    .line 1046
    .end local v1           #attr:Lgnu/bytecode/EnclosingMethodAttr;
    :cond_9
    :goto_4
    iget-object v8, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .local v8, member:Lgnu/bytecode/ClassType;
    :goto_5
    if-eqz v8, :cond_b

    .line 1049
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v11, v8}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    .line 1047
    iget-object v8, v8, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 1044
    .end local v8           #member:Lgnu/bytecode/ClassType;
    :cond_a
    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_9

    .line 1045
    iget-object v12, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v11, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v11, Lgnu/bytecode/ClassType;

    invoke-virtual {v12, v11}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    goto :goto_4

    .line 1052
    .restart local v8       #member:Lgnu/bytecode/ClassType;
    :cond_b
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v11

    invoke-static {v11}, Lgnu/bytecode/InnerClassesAttr;->getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;

    move-result-object v7

    .line 1054
    .local v7, innerAttr:Lgnu/bytecode/InnerClassesAttr;
    if-eqz v7, :cond_c

    .line 1057
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1060
    :cond_c
    invoke-static {p0, p0}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 1066
    const/4 v6, 0x1

    .restart local v6       #i:I
    :goto_6
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v11, v11, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v6, v11, :cond_10

    .line 1068
    iget-object v11, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v11, v11, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v4, v11, v6

    .line 1069
    .local v4, entry:Lgnu/bytecode/CpoolEntry;
    instance-of v11, v4, Lgnu/bytecode/CpoolClass;

    if-nez v11, :cond_e

    .line 1066
    :cond_d
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1071
    :cond_e
    move-object v0, v4

    check-cast v0, Lgnu/bytecode/CpoolClass;

    move-object v2, v0

    .line 1072
    .local v2, centry:Lgnu/bytecode/CpoolClass;
    iget-object v11, v2, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_d

    .line 1074
    iget-object v3, v2, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1075
    .local v3, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getEnclosingMember()Lgnu/bytecode/Member;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 1077
    if-nez v7, :cond_f

    .line 1078
    new-instance v7, Lgnu/bytecode/InnerClassesAttr;

    .end local v7           #innerAttr:Lgnu/bytecode/InnerClassesAttr;
    invoke-direct {v7, p0}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 1079
    .restart local v7       #innerAttr:Lgnu/bytecode/InnerClassesAttr;
    :cond_f
    invoke-virtual {v7, v2, p0}, Lgnu/bytecode/InnerClassesAttr;->addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V

    goto :goto_7

    .line 1082
    .end local v2           #centry:Lgnu/bytecode/CpoolClass;
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .end local v4           #entry:Lgnu/bytecode/CpoolEntry;
    :cond_10
    if-eqz v7, :cond_11

    .line 1084
    invoke-virtual {v7, v14}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1085
    invoke-virtual {v7, p0}, Lgnu/bytecode/InnerClassesAttr;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 1087
    :cond_11
    return-void
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public getClassfileMajorVersion()S
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method public getClassfileMinorVersion()S
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getClassfileVersion()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    return v0
.end method

.method public final getConstant(I)Lgnu/bytecode/CpoolEntry;
    .locals 1
    .parameter "i"

    .prologue
    .line 93
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v0, v0, Lgnu/bytecode/ConstantPool;->count:I

    if-le p1, v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getDeclaredClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "simpleName"

    .prologue
    .line 170
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addMemberClasses()V

    .line 171
    iget-object v0, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .local v0, member:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 177
    :goto_1
    return-object v1

    .line 172
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 2
    .parameter "name"

    .prologue
    .line 516
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v0

    .local v0, field:Lgnu/bytecode/Field;
    :goto_0
    if-eqz v0, :cond_1

    .line 518
    iget-object v1, v0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 521
    :goto_1
    return-object v1

    .line 516
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    .line 521
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 6
    .parameter "name"
    .parameter "argCount"

    .prologue
    .line 887
    const/4 v2, 0x0

    .line 888
    .local v2, result:Lgnu/bytecode/Method;
    const-string v3, "<init>"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v1, v3

    .line 889
    .local v1, needOuterLinkArg:I
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v0

    .line 890
    .local v0, method:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v0, :cond_3

    .line 892
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int v3, p2, v1

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 895
    if-eqz v2, :cond_1

    .line 896
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ambiguous call to getDeclaredMethod(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 888
    .end local v0           #method:Lgnu/bytecode/Method;
    .end local v1           #needOuterLinkArg:I
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 899
    .restart local v0       #method:Lgnu/bytecode/Method;
    .restart local v1       #needOuterLinkArg:I
    :cond_1
    move-object v2, v0

    .line 890
    :cond_2
    iget-object v0, v0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_1

    .line 902
    :cond_3
    return-object v2
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 9
    .parameter "name"
    .parameter "arg_types"

    .prologue
    .line 854
    const-string v8, "<init>"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v5, v8

    .line 855
    .local v5, needOuterLinkArg:I
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v3

    .line 856
    .local v3, method:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v3, :cond_7

    .line 858
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 856
    :cond_0
    iget-object v3, v3, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_1

    .line 854
    .end local v3           #method:Lgnu/bytecode/Method;
    .end local v5           #needOuterLinkArg:I
    :cond_1
    const/4 v8, 0x0

    move v5, v8

    goto :goto_0

    .line 860
    .restart local v3       #method:Lgnu/bytecode/Method;
    .restart local v5       #needOuterLinkArg:I
    :cond_2
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    .line 861
    .local v4, method_args:[Lgnu/bytecode/Type;
    if-eqz p2, :cond_3

    if-ne p2, v4, :cond_4

    if-nez v5, :cond_4

    :cond_3
    move-object v8, v3

    .line 881
    .end local v4           #method_args:[Lgnu/bytecode/Type;
    :goto_2
    return-object v8

    .line 864
    .restart local v4       #method_args:[Lgnu/bytecode/Type;
    :cond_4
    array-length v0, p2

    .line 865
    .local v0, i:I
    array-length v8, v4

    sub-int/2addr v8, v5

    if-ne v0, v8, :cond_0

    .line 867
    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 869
    add-int v8, v0, v5

    aget-object v2, v4, v8

    .line 870
    .local v2, meth_type:Lgnu/bytecode/Type;
    aget-object v7, p2, v0

    .line 871
    .local v7, need_type:Lgnu/bytecode/Type;
    if-eq v2, v7, :cond_5

    if-eqz v7, :cond_5

    .line 873
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, meth_sig:Ljava/lang/String;
    invoke-virtual {v7}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    .line 875
    .local v6, need_sig:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 878
    .end local v1           #meth_sig:Ljava/lang/String;
    .end local v2           #meth_type:Lgnu/bytecode/Type;
    .end local v6           #need_sig:Ljava/lang/String;
    .end local v7           #need_type:Lgnu/bytecode/Type;
    :cond_6
    if-gez v0, :cond_0

    move-object v8, v3

    .line 879
    goto :goto_2

    .line 881
    .end local v0           #i:I
    .end local v4           #method_args:[Lgnu/bytecode/Type;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public final declared-synchronized getDeclaredMethods()Lgnu/bytecode/Method;
    .locals 2

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 721
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->addMethods(Ljava/lang/Class;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 187
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    .line 190
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnclosingMember()Lgnu/bytecode/Member;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 196
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 560
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 5
    .parameter "name"
    .parameter "mask"

    .prologue
    .line 532
    move-object v0, p0

    .line 535
    .local v0, cl:Lgnu/bytecode/ClassType;
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 536
    .local v1, field:Lgnu/bytecode/Field;
    if-eqz v1, :cond_2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v1

    .line 551
    :goto_0
    return-object v4

    .line 539
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 540
    .local v3, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v3, :cond_4

    .line 542
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 544
    aget-object v4, v3, v2

    invoke-virtual {v4, p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_3

    move-object v4, v1

    .line 546
    goto :goto_0

    .line 542
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 549
    .end local v2           #i:I
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 551
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final getFieldCount()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lgnu/bytecode/ClassType;->fields_count:I

    return v0
.end method

.method public final declared-synchronized getFields()Lgnu/bytecode/Field;
    .locals 2

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x11

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 502
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addFields()V

    .line 503
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 5

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-nez v3, :cond_1

    iget v3, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 430
    iget-object v3, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 431
    .local v2, reflectInterfaces:[Ljava/lang/Class;
    array-length v1, v2

    .line 432
    .local v1, numInterfaces:I
    if-nez v1, :cond_0

    sget-object v3, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 435
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 436
    iget-object v4, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v3, v2, v0

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    aput-object v3, v4, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    .end local v0           #i:I
    :cond_0
    new-array v3, v1, [Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 438
    .end local v1           #numInterfaces:I
    .end local v2           #reflectInterfaces:[Ljava/lang/Class;
    :cond_1
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 427
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMatchingMethods(Ljava/lang/String;[Lgnu/bytecode/Type;I)[Lgnu/bytecode/Method;
    .locals 7
    .parameter "name"
    .parameter "paramTypes"
    .parameter "flags"

    .prologue
    .line 989
    const/4 v3, 0x0

    .line 990
    .local v3, nMatches:I
    new-instance v0, Ljava/util/Vector;

    const/16 v5, 0xa

    invoke-direct {v0, v5}, Ljava/util/Vector;-><init>(I)V

    .line 991
    .local v0, matches:Ljava/util/Vector;
    iget-object v1, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v1, method:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v1, :cond_2

    .line 993
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 991
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v1

    goto :goto_0

    .line 995
    :cond_1
    and-int/lit8 v5, p3, 0x8

    iget v6, v1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v6, v6, 0x8

    if-ne v5, v6, :cond_0

    .line 997
    and-int/lit8 v5, p3, 0x1

    iget v6, v1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_0

    .line 999
    iget-object v2, v1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 1000
    .local v2, mtypes:[Lgnu/bytecode/Type;
    array-length v5, v2

    array-length v6, p2

    if-ne v5, v6, :cond_0

    .line 1002
    add-int/lit8 v3, v3, 0x1

    .line 1003
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1005
    .end local v2           #mtypes:[Lgnu/bytecode/Type;
    :cond_2
    new-array v4, v3, [Lgnu/bytecode/Method;

    .line 1006
    .local v4, result:[Lgnu/bytecode/Method;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1007
    return-object v4
.end method

.method public getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 5
    .parameter "name"
    .parameter "arg_types"

    .prologue
    .line 907
    move-object v0, p0

    .line 910
    .local v0, cl:Lgnu/bytecode/ClassType;
    :cond_0
    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 911
    .local v3, method:Lgnu/bytecode/Method;
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 935
    :goto_0
    return-object v4

    .line 913
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 914
    if-nez v0, :cond_0

    .line 917
    move-object v0, p0

    .line 920
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 921
    .local v2, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v2, :cond_4

    .line 923
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 925
    aget-object v4, v2, v1

    invoke-virtual {v4, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 927
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 928
    goto :goto_0

    .line 923
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    .end local v1           #i:I
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 932
    if-nez v0, :cond_2

    .line 935
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "method"

    .prologue
    .line 709
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 711
    .local v2, parameterClasses:[Ljava/lang/Class;
    array-length v4, v2

    new-array v3, v4, [Lgnu/bytecode/Type;

    .line 712
    .local v3, parameterTypes:[Lgnu/bytecode/Type;
    array-length v0, v2

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 713
    aget-object v4, v2, v0

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_0

    .line 714
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v3, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    return-object v4
.end method

.method public final getMethodCount()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lgnu/bytecode/ClassType;->methods_count:I

    return v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I
    .locals 6
    .parameter "filter"
    .parameter "searchSupers"
    .parameter "result"
    .parameter "context"

    .prologue
    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, count:I
    move-object v1, p0

    .local v1, ctype:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v1, :cond_4

    .line 815
    if-eqz p4, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 819
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v4

    .line 820
    .local v4, meth:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v4, :cond_3

    .line 821
    invoke-interface {p1, v4}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 823
    if-eqz p3, :cond_1

    .line 824
    invoke-virtual {p3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 825
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 820
    :cond_2
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v4

    goto :goto_1

    .line 828
    .end local v4           #meth:Lgnu/bytecode/Method;
    :cond_3
    if-nez p2, :cond_5

    .line 842
    :cond_4
    return v0

    .line 831
    :cond_5
    const/4 v5, 0x1

    if-le p2, v5, :cond_6

    .line 833
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 834
    .local v3, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v3, :cond_6

    .line 836
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_6

    .line 837
    aget-object v5, v3, v2

    invoke-virtual {v5, p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/Vector;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 836
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 813
    .end local v2           #i:I
    .end local v3           #interfaces:[Lgnu/bytecode/ClassType;
    :cond_6
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I
    .locals 7
    .parameter "filter"
    .parameter "searchSupers"
    .parameter "result"
    .parameter "offset"

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, count:I
    move-object v1, p0

    .local v1, ctype:Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v1, :cond_3

    .line 774
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v4

    .line 775
    .local v4, meth:Lgnu/bytecode/Method;
    :goto_1
    if-eqz v4, :cond_2

    .line 776
    invoke-interface {p1, v4}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 778
    if-eqz p3, :cond_0

    .line 779
    add-int v5, p4, v0

    aput-object v4, p3, v5

    .line 780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 775
    :cond_1
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v4

    goto :goto_1

    .line 782
    :cond_2
    if-nez p2, :cond_4

    .line 796
    .end local v4           #meth:Lgnu/bytecode/Method;
    :cond_3
    return v0

    .line 785
    .restart local v4       #meth:Lgnu/bytecode/Method;
    :cond_4
    const/4 v5, 0x1

    if-le p2, v5, :cond_5

    .line 787
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 788
    .local v3, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v3, :cond_5

    .line 790
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v5, v3

    if-ge v2, v5, :cond_5

    .line 791
    aget-object v5, v3, v2

    add-int v6, p4, v0

    invoke-virtual {v5, p1, p2, p3, v6}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I

    move-result v5

    add-int/2addr v0, v5

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 772
    .end local v2           #i:I
    .end local v3           #interfaces:[Lgnu/bytecode/ClassType;
    :cond_5
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_0
.end method

.method public final getMethods()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;
    .locals 4
    .parameter "filter"
    .parameter "searchSupers"

    .prologue
    const/4 v3, 0x0

    .line 751
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I

    move-result v0

    .line 752
    .local v0, count:I
    new-array v1, v0, [Lgnu/bytecode/Method;

    .line 753
    .local v1, result:[Lgnu/bytecode/Method;
    invoke-virtual {p0, p1, p2, v1, v3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I

    .line 754
    return-object v1
.end method

.method public getMethods(Lgnu/bytecode/Filter;Z)[Lgnu/bytecode/Method;
    .locals 1
    .parameter "filter"
    .parameter "searchSupers"

    .prologue
    .line 739
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getModifiers()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 105
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return v0
.end method

.method public getOuterLinkType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const-string v0, "this$0"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 418
    .local v0, index:I
    if-gez v0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 119
    iget v6, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 123
    :try_start_0
    iget-object v6, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 148
    :goto_0
    return-object v6

    .line 125
    :catch_0
    move-exception v6

    .line 129
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, name:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 131
    .local v2, dot:I
    if-lez v2, :cond_1

    .line 132
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_1
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 134
    .local v1, dollar:I
    if-ltz v1, :cond_3

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 137
    .local v3, len:I
    add-int/lit8 v5, v1, 0x1

    .line 138
    .local v5, start:I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 140
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, ch:C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-gt v0, v6, :cond_2

    .line 142
    add-int/lit8 v5, v5, 0x1

    .line 145
    goto :goto_1

    .line 146
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .end local v3           #len:I
    .end local v5           #start:I
    :cond_3
    move-object v6, v4

    .line 148
    goto :goto_0
.end method

.method public final getStaticFlag()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuperclass()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 411
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final hasOuterLink()Z
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    .line 260
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final implementsInterface(Lgnu/bytecode/ClassType;)Z
    .locals 5
    .parameter "iface"

    .prologue
    const/4 v4, 0x1

    .line 1203
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 1217
    :goto_0
    return v3

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1206
    .local v0, baseClass:Lgnu/bytecode/ClassType;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1207
    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 1209
    .local v2, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v2, :cond_3

    .line 1211
    array-length v1, v2

    .local v1, i:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 1213
    aget-object v3, v2, v1

    invoke-virtual {v3, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1214
    goto :goto_0

    .line 1217
    .end local v1           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z
    .locals 11
    .parameter "declaring"
    .parameter "receiver"
    .parameter "modifiers"

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, ""

    .line 327
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v4

    .line 328
    .local v4, cmods:I
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_0

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    move v6, v8

    .line 347
    .end local p2
    :goto_0
    return v6

    .line 330
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, callerName:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, className:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    .line 333
    goto :goto_0

    .line 334
    :cond_1
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_2

    move v6, v7

    .line 335
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 337
    .local v5, dot:I
    if-ltz v5, :cond_3

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 338
    .local v1, callerPackage:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 339
    if-ltz v5, :cond_4

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 340
    .local v3, classPackage:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    .line 341
    goto :goto_0

    .line 337
    .end local v1           #callerPackage:Ljava/lang/String;
    .end local v3           #classPackage:Ljava/lang/String;
    :cond_3
    const-string v6, ""

    move-object v1, v10

    goto :goto_1

    .line 339
    .restart local v1       #callerPackage:Ljava/lang/String;
    :cond_4
    const-string v6, ""

    move-object v3, v10

    goto :goto_2

    .line 342
    .restart local v3       #classPackage:Ljava/lang/String;
    :cond_5
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_7

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v6

    if-eqz v6, :cond_7

    instance-of v6, p2, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_6

    check-cast p2, Lgnu/bytecode/ClassType;

    .end local p2
    invoke-virtual {p2, p0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v6, v8

    .line 346
    goto :goto_0

    :cond_7
    move v6, v7

    .line 347
    goto :goto_0
.end method

.method public isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z
    .locals 2
    .parameter "member"
    .parameter "receiver"

    .prologue
    .line 311
    invoke-interface {p1}, Lgnu/bytecode/Member;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const/4 p2, 0x0

    .line 313
    :cond_0
    invoke-interface {p1}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-interface {p1}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v0

    return v0
.end method

.method public final isInterface()Z
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubclass(Lgnu/bytecode/ClassType;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    .line 1239
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v1

    .line 1251
    :goto_0
    return v1

    .line 1241
    :cond_0
    sget-object v1, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v1, :cond_1

    sget-object v1, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-eq p1, v1, :cond_2

    :cond_1
    sget-object v1, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v1, :cond_3

    sget-object v1, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_3

    :cond_2
    move v1, v2

    .line 1243
    goto :goto_0

    .line 1244
    :cond_3
    move-object v0, p0

    .line 1245
    .local v0, baseClass:Lgnu/bytecode/ClassType;
    :goto_1
    if-eqz v0, :cond_5

    .line 1247
    if-ne v0, p1, :cond_4

    move v1, v2

    .line 1248
    goto :goto_0

    .line 1249
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_1

    .line 1251
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isSubclass(Ljava/lang/String;)Z
    .locals 2
    .parameter "cname"

    .prologue
    .line 1226
    move-object v0, p0

    .line 1229
    .local v0, ctype:Lgnu/bytecode/ClassType;
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    const/4 v1, 0x1

    .line 1233
    :goto_0
    return v1

    .line 1231
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1232
    if-nez v0, :cond_0

    .line 1233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 1294
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 1295
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1299
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1301
    .local v2, name:Ljava/lang/String;
    sget-object v1, Lgnu/bytecode/ClassType;->mapNameToType:Ljava/util/HashMap;

    .line 1305
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    monitor-enter v1

    .line 1307
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    .line 1308
    .local v0, found:Lgnu/bytecode/Type;
    if-eqz v0, :cond_0

    .line 1309
    monitor-exit v1

    move-object v3, v0

    .line 1312
    :goto_0
    return-object v3

    .line 1310
    :cond_0
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    monitor-exit v1

    move-object v3, p0

    .line 1312
    goto :goto_0

    .line 1311
    .end local v0           #found:Lgnu/bytecode/Type;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0
    .parameter "attributes"

    .prologue
    .line 81
    iput-object p1, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setClassfileVersion(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 36
    iput p1, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 37
    return-void
.end method

.method public setClassfileVersion(II)V
    .locals 3
    .parameter "major"
    .parameter "minor"

    .prologue
    const v2, 0xffff

    .line 32
    and-int v0, p1, v2

    const/high16 v1, 0x1

    mul-int/2addr v0, v1

    mul-int v1, p2, v2

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 33
    return-void
.end method

.method public setClassfileVersionJava5()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x31

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 45
    return-void
.end method

.method public setEnclosingMember(Lgnu/bytecode/Member;)V
    .locals 0
    .parameter "member"

    .prologue
    .line 201
    iput-object p1, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .line 202
    return-void
.end method

.method public final setInterface(Z)V
    .locals 1
    .parameter "val"

    .prologue
    .line 471
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    goto :goto_0
.end method

.method public setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "interfaces"

    .prologue
    .line 442
    iput-object p1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setModifiers(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 113
    iput p1, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 355
    iput-object p1, p0, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;
    .locals 7
    .parameter "outer"

    .prologue
    const/4 v6, 0x0

    const-string v5, "this$0"

    .line 277
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 278
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOuterLink called for existing class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_0
    const-string v4, "this$0"

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 280
    .local v1, field:Lgnu/bytecode/Field;
    if-nez v1, :cond_3

    .line 282
    const-string v4, "this$0"

    invoke-virtual {p0, v5, p1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 283
    iget v4, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 284
    iget-object v2, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v2, meth:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v2, :cond_4

    .line 286
    const-string v4, "<init>"

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 288
    iget-object v4, v2, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    if-eqz v4, :cond_1

    .line 289
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOuterLink called when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has code"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 290
    :cond_1
    iget-object v0, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 291
    .local v0, arg_types:[Lgnu/bytecode/Type;
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Lgnu/bytecode/Type;

    .line 292
    .local v3, new_types:[Lgnu/bytecode/Type;
    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    aput-object p1, v3, v6

    .line 294
    iput-object v3, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 295
    const/4 v4, 0x0

    iput-object v4, v2, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    .line 284
    .end local v0           #arg_types:[Lgnu/bytecode/Type;
    .end local v3           #new_types:[Lgnu/bytecode/Type;
    :cond_2
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_0

    .line 299
    .end local v2           #meth:Lgnu/bytecode/Method;
    :cond_3
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 300
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inconsistent setOuterLink call for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 301
    :cond_4
    return-object v1
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 374
    iget-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v1, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addFile(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    iget v1, v1, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-static {p1}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 382
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 383
    .local v0, slash:I
    if-ltz v0, :cond_1

    .line 384
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 385
    :cond_1
    invoke-static {p0, p1}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStratum(Ljava/lang/String;)V
    .locals 1
    .parameter "stratum"

    .prologue
    .line 366
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lgnu/bytecode/SourceDebugExtAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    iput-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 368
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addStratum(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public setSuper(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "superClass"

    .prologue
    .line 399
    iput-object p1, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 400
    return-void
.end method

.method public setSuper(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 394
    if-nez p1, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 395
    return-void

    .line 394
    :cond_0
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1287
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1288
    return-void
.end method

.method public writeToArray()[B
    .locals 4

    .prologue
    .line 1150
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1153
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1155
    :catch_0
    move-exception v0

    .line 1157
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeToFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    const/16 v2, 0x2e

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1138
    .local v0, stream:Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V

    .line 1139
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1140
    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1092
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1095
    .local v0, dstr:Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->doFixups()V

    .line 1097
    const v5, -0x35014542

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1098
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1099
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1102
    iget-object v5, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v5, :cond_1

    .line 1103
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1107
    :goto_0
    iget v5, p0, Lgnu/bytecode/ClassType;->access_flags:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1108
    iget v5, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1109
    iget v5, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1110
    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v5, :cond_2

    .line 1111
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1120
    :cond_0
    iget v5, p0, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1121
    iget-object v1, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .local v1, field:Lgnu/bytecode/Field;
    :goto_1
    if-eqz v1, :cond_3

    .line 1122
    invoke-virtual {v1, v0, p0}, Lgnu/bytecode/Field;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1121
    iget-object v1, v1, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_1

    .line 1105
    .end local v1           #field:Lgnu/bytecode/Field;
    :cond_1
    iget-object v5, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v5, v0}, Lgnu/bytecode/ConstantPool;->write(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    array-length v3, v5

    .line 1115
    .local v3, interfaces_count:I
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1116
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 1117
    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1124
    .end local v2           #i:I
    .end local v3           #interfaces_count:I
    .restart local v1       #field:Lgnu/bytecode/Field;
    :cond_3
    iget v5, p0, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1125
    iget-object v4, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v4, method:Lgnu/bytecode/Method;
    :goto_3
    if-eqz v4, :cond_4

    .line 1126
    invoke-virtual {v4, v0, p0}, Lgnu/bytecode/Method;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1125
    iget-object v4, v4, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_3

    .line 1128
    :cond_4
    invoke-static {p0, v0}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 1130
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v5, v5, 0x3

    iput v5, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 1131
    return-void
.end method
