.class Lorg/connectbot/GeneratePubkeyActivity$7;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/GeneratePubkeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/GeneratePubkeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity$7;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 182
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$7;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->save:Landroid/widget/Button;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$16(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$7;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #calls: Lorg/connectbot/GeneratePubkeyActivity;->startEntropyGather()V
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$17(Lorg/connectbot/GeneratePubkeyActivity;)V

    .line 185
    return-void
.end method
