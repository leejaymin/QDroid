.class final enum Lorg/chemlab/dealdroidapp/Database$Field;
.super Ljava/lang/Enum;
.source "Database.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chemlab/dealdroidapp/Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chemlab/dealdroidapp/Database$Field;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

.field private static final synthetic ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum ID:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum IMAGE_URL:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum RETAIL_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum SALE_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum SAVINGS:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum TIMESTAMP:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum TITLE:Lorg/chemlab/dealdroidapp/Database$Field;

.field public static final enum URL:Lorg/chemlab/dealdroidapp/Database$Field;


# instance fields
.field private final modifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "ID"

    const-string v2, "TEXT PRIMARY KEY"

    invoke-direct {v0, v1, v4, v2}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 26
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "TITLE"

    const-string v2, "TEXT NOT NULL"

    invoke-direct {v0, v1, v5, v2}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->TITLE:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 27
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "DESCRIPTION"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v6, v2}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 28
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "SHORT_DESCRIPTION"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v7, v2}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 29
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "URL"

    const-string v2, "TEXT NOT NULL"

    invoke-direct {v0, v1, v8, v2}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->URL:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 30
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "IMAGE_URL"

    const/4 v2, 0x5

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->IMAGE_URL:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 31
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "RETAIL_PRICE"

    const/4 v2, 0x6

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 32
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "SALE_PRICE"

    const/4 v2, 0x7

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->SALE_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 33
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "SAVINGS"

    const/16 v2, 0x8

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->SAVINGS:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 34
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "TIMESTAMP"

    const/16 v2, 0x9

    const-string v3, "NUMBER NOT NULL"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->TIMESTAMP:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 35
    new-instance v0, Lorg/chemlab/dealdroidapp/Database$Field;

    const-string v1, "EXPIRATION"

    const/16 v2, 0xa

    const-string v3, "NUMBER"

    invoke-direct {v0, v1, v2, v3}, Lorg/chemlab/dealdroidapp/Database$Field;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

    .line 23
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/chemlab/dealdroidapp/Database$Field;

    sget-object v1, Lorg/chemlab/dealdroidapp/Database$Field;->ID:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chemlab/dealdroidapp/Database$Field;->TITLE:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chemlab/dealdroidapp/Database$Field;->DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chemlab/dealdroidapp/Database$Field;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v1, v0, v7

    sget-object v1, Lorg/chemlab/dealdroidapp/Database$Field;->URL:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->IMAGE_URL:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->SALE_PRICE:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->SAVINGS:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->TIMESTAMP:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chemlab/dealdroidapp/Database$Field;->EXPIRATION:Lorg/chemlab/dealdroidapp/Database$Field;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Database$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "modifier"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/Database$Field;->modifier:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Database$Field;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/Database$Field;

    return-object v0
.end method

.method public static values()[Lorg/chemlab/dealdroidapp/Database$Field;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/chemlab/dealdroidapp/Database$Field;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Database$Field;

    array-length v1, v0

    new-array v2, v1, [Lorg/chemlab/dealdroidapp/Database$Field;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getModifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Database$Field;->modifier:Ljava/lang/String;

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Database$Field;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
