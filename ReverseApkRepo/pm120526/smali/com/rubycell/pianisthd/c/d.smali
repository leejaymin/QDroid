.class public final enum Lcom/rubycell/pianisthd/c/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/rubycell/pianisthd/c/d;

.field public static final enum b:Lcom/rubycell/pianisthd/c/d;

.field public static final enum c:Lcom/rubycell/pianisthd/c/d;

.field private static final synthetic d:[Lcom/rubycell/pianisthd/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/rubycell/pianisthd/c/d;

    const-string v1, "NORMAL_STATE"

    invoke-direct {v0, v1, v2}, Lcom/rubycell/pianisthd/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    new-instance v0, Lcom/rubycell/pianisthd/c/d;

    const-string v1, "CLICKED_STATE"

    invoke-direct {v0, v1, v3}, Lcom/rubycell/pianisthd/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubycell/pianisthd/c/d;->b:Lcom/rubycell/pianisthd/c/d;

    new-instance v0, Lcom/rubycell/pianisthd/c/d;

    const-string v1, "HINT_STATE"

    invoke-direct {v0, v1, v4}, Lcom/rubycell/pianisthd/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubycell/pianisthd/c/d;->c:Lcom/rubycell/pianisthd/c/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rubycell/pianisthd/c/d;

    sget-object v1, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rubycell/pianisthd/c/d;->b:Lcom/rubycell/pianisthd/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rubycell/pianisthd/c/d;->c:Lcom/rubycell/pianisthd/c/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rubycell/pianisthd/c/d;->d:[Lcom/rubycell/pianisthd/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
