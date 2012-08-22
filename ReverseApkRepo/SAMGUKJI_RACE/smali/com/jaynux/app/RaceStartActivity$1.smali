.class Lcom/jaynux/app/RaceStartActivity$1;
.super Ljava/lang/Object;
.source "RaceStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/RaceStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/RaceStartActivity;


# direct methods
.method constructor <init>(Lcom/jaynux/app/RaceStartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 41
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    const-class v2, Lcom/jaynux/app/PlayerNumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    invoke-virtual {v1, v0}, Lcom/jaynux/app/RaceStartActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    invoke-virtual {v1}, Lcom/jaynux/app/RaceStartActivity;->finish()V

    goto :goto_0

    .line 46
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    const-class v2, Lcom/jaynux/app/SelectHero;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "preferences"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    invoke-virtual {v1, v0}, Lcom/jaynux/app/RaceStartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    const-class v2, Lcom/jaynux/app/SaveInformationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    invoke-virtual {v1, v0}, Lcom/jaynux/app/RaceStartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    const-class v2, Lcom/jaynux/app/preference/PreferActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jaynux/app/RaceStartActivity$1;->this$0:Lcom/jaynux/app/RaceStartActivity;

    invoke-virtual {v1, v0}, Lcom/jaynux/app/RaceStartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f090002
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
