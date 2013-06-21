.class public final enum Lcom/scoreloop/client/android/ui/framework/PagingDirection;
.super Ljava/lang/Enum;
.source "PagingDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/PagingDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/framework/PagingDirection;

.field public static final enum PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

.field public static final enum PAGE_TO_OWN:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

.field public static final enum PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

.field public static final enum PAGE_TO_RECENT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

.field public static final enum PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;


# instance fields
.field private _flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    const-string v1, "PAGE_TO_NEXT"

    invoke-direct {v0, v1, v2, v4}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    const-string v1, "PAGE_TO_OWN"

    invoke-direct {v0, v1, v3, v5}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_OWN:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    const-string v1, "PAGE_TO_PREV"

    invoke-direct {v0, v1, v4, v3}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    const-string v1, "PAGE_TO_RECENT"

    invoke-direct {v0, v1, v5, v6}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_RECENT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    const-string v1, "PAGE_TO_TOP"

    invoke-direct {v0, v1, v6, v2}, Lcom/scoreloop/client/android/ui/framework/PagingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_NEXT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_OWN:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_PREV:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_RECENT:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->PAGE_TO_TOP:Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "shift"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    const/4 v0, 0x1

    shl-int/2addr v0, p3

    iput v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->_flag:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/framework/PagingDirection;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/framework/PagingDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/framework/PagingDirection;

    return-object v0
.end method


# virtual methods
.method combine(I)I
    .locals 1
    .parameter "flags"

    .prologue
    .line 34
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->_flag:I

    or-int/2addr v0, p1

    return v0
.end method

.method isPresentIn(I)Z
    .locals 1
    .parameter "flags"

    .prologue
    .line 38
    iget v0, p0, Lcom/scoreloop/client/android/ui/framework/PagingDirection;->_flag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
