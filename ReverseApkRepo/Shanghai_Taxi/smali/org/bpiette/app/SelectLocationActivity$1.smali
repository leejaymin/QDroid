.class Lorg/bpiette/app/SelectLocationActivity$1;
.super Ljava/lang/Object;
.source "SelectLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bpiette/app/SelectLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bpiette/app/SelectLocationActivity;


# direct methods
.method constructor <init>(Lorg/bpiette/app/SelectLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/bpiette/app/SelectLocationActivity$1;->this$0:Lorg/bpiette/app/SelectLocationActivity;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 26
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    move-object v2, v0

    .line 27
    .local v2, radio:Landroid/widget/RadioButton;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v1, data:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    iget-object v3, p0, Lorg/bpiette/app/SelectLocationActivity$1;->this$0:Lorg/bpiette/app/SelectLocationActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lorg/bpiette/app/SelectLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 31
    iget-object v3, p0, Lorg/bpiette/app/SelectLocationActivity$1;->this$0:Lorg/bpiette/app/SelectLocationActivity;

    invoke-virtual {v3}, Lorg/bpiette/app/SelectLocationActivity;->finish()V

    .line 32
    return-void
.end method
