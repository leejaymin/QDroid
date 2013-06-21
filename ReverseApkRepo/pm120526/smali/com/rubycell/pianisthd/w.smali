.class final Lcom/rubycell/pianisthd/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/v;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/v;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const v2, 0x7f050005

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v1}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v0}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v0}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v0}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->A:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v0}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->A:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v0}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rubycell/pianisthd/DoubleRowActivity;->C:Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v1}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v1}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v1}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v1}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const v2, 0x7f050004

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/w;->a:Lcom/rubycell/pianisthd/v;

    invoke-static {v1}, Lcom/rubycell/pianisthd/v;->a(Lcom/rubycell/pianisthd/v;)Lcom/rubycell/pianisthd/DoubleRowActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/j/a;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
