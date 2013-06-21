.class public final Lcom/rubycell/moregame/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/a/a/e;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/rubycell/moregame/a/a/e;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/a/a/f;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/rubycell/moregame/a/a/f;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/rubycell/moregame/a/a/f;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/f;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/f;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rubycell/moregame/a/a/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/f;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rubycell/moregame/a/a/f;->a:Lcom/rubycell/moregame/a/a/e;

    invoke-static {v1}, Lcom/rubycell/moregame/a/a/e;->d(Lcom/rubycell/moregame/a/a/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
