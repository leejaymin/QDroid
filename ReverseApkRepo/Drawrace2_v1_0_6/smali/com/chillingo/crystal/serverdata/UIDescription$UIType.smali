.class public final enum Lcom/chillingo/crystal/serverdata/UIDescription$UIType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/serverdata/UIDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/serverdata/UIDescription$UIType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

.field public static final enum GroupedTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

.field public static final enum PlainTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

.field public static final enum TopLevel:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

.field public static final enum Unknown:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->Unknown:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    const-string v1, "GroupedTable"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->GroupedTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    const-string v1, "PlainTable"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->PlainTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    const-string v1, "TopLevel"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->TopLevel:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    sget-object v1, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->Unknown:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->GroupedTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->PlainTable:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->TopLevel:Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->$VALUES:[Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription$UIType;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/serverdata/UIDescription$UIType;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->$VALUES:[Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/serverdata/UIDescription$UIType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/serverdata/UIDescription$UIType;

    return-object v0
.end method
