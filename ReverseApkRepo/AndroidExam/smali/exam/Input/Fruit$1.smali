.class Lexam/Input/Fruit$1;
.super Ljava/lang/Object;
.source "Fruit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Input/Fruit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Input/Fruit;


# direct methods
.method constructor <init>(Lexam/Input/Fruit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Input/Fruit$1;->this$0:Lexam/Input/Fruit;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 72
    iget-object v1, p0, Lexam/Input/Fruit$1;->this$0:Lexam/Input/Fruit;

    const v2, 0x7f0c003b

    invoke-virtual {v1, v2}, Lexam/Input/Fruit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, textFruit:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const-string v1, "Apple"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v1, "Orange"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c003c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
