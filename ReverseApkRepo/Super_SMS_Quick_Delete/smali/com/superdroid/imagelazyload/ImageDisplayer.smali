.class public Lcom/superdroid/imagelazyload/ImageDisplayer;
.super Ljava/lang/Object;
.source "ImageDisplayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected _drawable:Landroid/graphics/drawable/Drawable;

.field protected _view:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "imageView"
    .parameter "d"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/superdroid/imagelazyload/ImageDisplayer;->_view:Landroid/widget/ImageView;

    .line 13
    iput-object p2, p0, Lcom/superdroid/imagelazyload/ImageDisplayer;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/superdroid/imagelazyload/ImageDisplayer;->_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/superdroid/imagelazyload/ImageDisplayer;->_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    return-void
.end method
