.class public Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;
.super Ljava/lang/Object;
.source "PicturePosition.java"


# instance fields
.field private position:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;->position:Landroid/graphics/Rect;

    .line 11
    return-void
.end method


# virtual methods
.method public getPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;->position:Landroid/graphics/Rect;

    return-object v0
.end method
