.class final enum Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
.super Ljava/lang/Enum;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MediaSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum CONTACT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum CONTENT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum FILE_URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum REPL_ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum SDCARD:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

.field public static final enum URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "ASSET"

    invoke-direct {v0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "REPL_ASSET"

    invoke-direct {v0, v1, v4}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "SDCARD"

    invoke-direct {v0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "FILE_URL"

    invoke-direct {v0, v1, v6}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "URL"

    invoke-direct {v0, v1, v7}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "CONTENT_URI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const-string v1, "CONTACT_URI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->$VALUES:[Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    return-object p0
.end method

.method public static values()[Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->$VALUES:[Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    invoke-virtual {v0}, [Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    return-object v0
.end method
