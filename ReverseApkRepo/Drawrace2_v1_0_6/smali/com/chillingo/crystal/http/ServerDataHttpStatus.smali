.class public final enum Lcom/chillingo/crystal/http/ServerDataHttpStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/http/ServerDataHttpStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorBadPostType:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorConnectionFailed:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorNoLongerAvailble:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorNullPostRedirect:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorResourceNotFound:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorServerError:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

.field public static final enum ErrorUnreachable:Lcom/chillingo/crystal/http/ServerDataHttpStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorNone"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorBadPostType"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadPostType:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorUnreachable"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorUnreachable:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorConnectionFailed"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorConnectionFailed:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorServerError"

    invoke-direct {v0, v1, v7}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorServerError:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorResourceNotFound"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorResourceNotFound:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorNoLongerAvailble"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNoLongerAvailble:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorNullPostRedirect"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNullPostRedirect:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    new-instance v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const-string v1, "ErrorBadRequest"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/http/ServerDataHttpStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadPostType:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorUnreachable:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorConnectionFailed:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorServerError:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorResourceNotFound:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNoLongerAvailble:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNullPostRedirect:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->$VALUES:[Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromHttpStatus(I)Lcom/chillingo/crystal/http/ServerDataHttpStatus;
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xca

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNone:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0x19a

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorNoLongerAvailble:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto :goto_0

    :cond_2
    const/16 v0, 0x194

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorResourceNotFound:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto :goto_0

    :cond_3
    const/16 v0, 0x190

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorBadRequest:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->ErrorConnectionFailed:Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/http/ServerDataHttpStatus;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/http/ServerDataHttpStatus;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/http/ServerDataHttpStatus;->$VALUES:[Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/http/ServerDataHttpStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/http/ServerDataHttpStatus;

    return-object v0
.end method
