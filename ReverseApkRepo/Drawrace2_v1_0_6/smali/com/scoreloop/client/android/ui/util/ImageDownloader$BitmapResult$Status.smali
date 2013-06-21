.class final enum Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;
.super Ljava/lang/Enum;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

.field public static final enum ERROR:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

.field public static final enum NOT_FOUND:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

.field public static final enum OK:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->OK:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->NOT_FOUND:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->ERROR:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    .line 343
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    sget-object v1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->OK:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->NOT_FOUND:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->ERROR:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->$VALUES:[Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

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
    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 343
    const-class v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->$VALUES:[Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    return-object v0
.end method
