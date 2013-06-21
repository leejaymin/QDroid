.class final Lcom/rubycell/pianisthd/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/DoubleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f020169

    const/16 v3, 0x1f4

    const/4 v2, 0x0

    const-string v0, "Record song"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const-string v1, "Your SD Card is unmounted"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iput-boolean v2, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->D:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-boolean v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->D:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->D:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->z:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const-string v1, "Recording"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iput-boolean v2, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->D:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/l;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->d()V

    goto :goto_0
.end method
