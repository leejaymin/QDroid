.class final enum Lorg/tf/util/IniFile$ParseState;
.super Ljava/lang/Enum;
.source "IniFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/util/IniFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/tf/util/IniFile$ParseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMENT:Lorg/tf/util/IniFile$ParseState;

.field private static final synthetic ENUM$VALUES:[Lorg/tf/util/IniFile$ParseState;

.field public static final enum ESCAPE:Lorg/tf/util/IniFile$ParseState;

.field public static final enum ESC_CRNL:Lorg/tf/util/IniFile$ParseState;

.field public static final enum NORMAL:Lorg/tf/util/IniFile$ParseState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    new-instance v0, Lorg/tf/util/IniFile$ParseState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lorg/tf/util/IniFile$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tf/util/IniFile$ParseState;->NORMAL:Lorg/tf/util/IniFile$ParseState;

    .line 226
    new-instance v0, Lorg/tf/util/IniFile$ParseState;

    const-string v1, "ESCAPE"

    invoke-direct {v0, v1, v3}, Lorg/tf/util/IniFile$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tf/util/IniFile$ParseState;->ESCAPE:Lorg/tf/util/IniFile$ParseState;

    .line 227
    new-instance v0, Lorg/tf/util/IniFile$ParseState;

    const-string v1, "ESC_CRNL"

    invoke-direct {v0, v1, v4}, Lorg/tf/util/IniFile$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tf/util/IniFile$ParseState;->ESC_CRNL:Lorg/tf/util/IniFile$ParseState;

    .line 228
    new-instance v0, Lorg/tf/util/IniFile$ParseState;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v5}, Lorg/tf/util/IniFile$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/tf/util/IniFile$ParseState;->COMMENT:Lorg/tf/util/IniFile$ParseState;

    .line 224
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/tf/util/IniFile$ParseState;

    sget-object v1, Lorg/tf/util/IniFile$ParseState;->NORMAL:Lorg/tf/util/IniFile$ParseState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/tf/util/IniFile$ParseState;->ESCAPE:Lorg/tf/util/IniFile$ParseState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/tf/util/IniFile$ParseState;->ESC_CRNL:Lorg/tf/util/IniFile$ParseState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/tf/util/IniFile$ParseState;->COMMENT:Lorg/tf/util/IniFile$ParseState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/tf/util/IniFile$ParseState;->ENUM$VALUES:[Lorg/tf/util/IniFile$ParseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tf/util/IniFile$ParseState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/tf/util/IniFile$ParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/tf/util/IniFile$ParseState;

    return-object p0
.end method

.method public static values()[Lorg/tf/util/IniFile$ParseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/tf/util/IniFile$ParseState;->ENUM$VALUES:[Lorg/tf/util/IniFile$ParseState;

    array-length v1, v0

    new-array v2, v1, [Lorg/tf/util/IniFile$ParseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
