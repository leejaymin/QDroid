.class public final enum Lcom/jellybus/fx_sub/PaintController$Command;
.super Ljava/lang/Enum;
.source "PaintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/PaintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jellybus/fx_sub/PaintController$Command;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Center:Lcom/jellybus/fx_sub/PaintController$Command;

.field private static final synthetic ENUM$VALUES:[Lcom/jellybus/fx_sub/PaintController$Command;

.field public static final enum Layout:Lcom/jellybus/fx_sub/PaintController$Command;

.field public static final enum Move:Lcom/jellybus/fx_sub/PaintController$Command;

.field public static final enum Reset:Lcom/jellybus/fx_sub/PaintController$Command;

.field public static final enum Zoom:Lcom/jellybus/fx_sub/PaintController$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/jellybus/fx_sub/PaintController$Command;

    const-string v1, "Center"

    invoke-direct {v0, v1, v2}, Lcom/jellybus/fx_sub/PaintController$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Center:Lcom/jellybus/fx_sub/PaintController$Command;

    new-instance v0, Lcom/jellybus/fx_sub/PaintController$Command;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/jellybus/fx_sub/PaintController$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Move:Lcom/jellybus/fx_sub/PaintController$Command;

    new-instance v0, Lcom/jellybus/fx_sub/PaintController$Command;

    const-string v1, "Zoom"

    invoke-direct {v0, v1, v4}, Lcom/jellybus/fx_sub/PaintController$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Zoom:Lcom/jellybus/fx_sub/PaintController$Command;

    new-instance v0, Lcom/jellybus/fx_sub/PaintController$Command;

    const-string v1, "Layout"

    invoke-direct {v0, v1, v5}, Lcom/jellybus/fx_sub/PaintController$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Layout:Lcom/jellybus/fx_sub/PaintController$Command;

    new-instance v0, Lcom/jellybus/fx_sub/PaintController$Command;

    const-string v1, "Reset"

    invoke-direct {v0, v1, v6}, Lcom/jellybus/fx_sub/PaintController$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->Reset:Lcom/jellybus/fx_sub/PaintController$Command;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jellybus/fx_sub/PaintController$Command;

    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Center:Lcom/jellybus/fx_sub/PaintController$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Move:Lcom/jellybus/fx_sub/PaintController$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Zoom:Lcom/jellybus/fx_sub/PaintController$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Layout:Lcom/jellybus/fx_sub/PaintController$Command;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jellybus/fx_sub/PaintController$Command;->Reset:Lcom/jellybus/fx_sub/PaintController$Command;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->ENUM$VALUES:[Lcom/jellybus/fx_sub/PaintController$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jellybus/fx_sub/PaintController$Command;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jellybus/fx_sub/PaintController$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/PaintController$Command;

    return-object v0
.end method

.method public static values()[Lcom/jellybus/fx_sub/PaintController$Command;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jellybus/fx_sub/PaintController$Command;->ENUM$VALUES:[Lcom/jellybus/fx_sub/PaintController$Command;

    array-length v1, v0

    new-array v2, v1, [Lcom/jellybus/fx_sub/PaintController$Command;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
