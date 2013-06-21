.class Lcom/fleapapa/helper/InterestSelector$8;
.super Ljava/lang/Object;
.source "InterestSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/InterestSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/InterestSelector;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/InterestSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$8;->this$0:Lcom/fleapapa/helper/InterestSelector;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$8;->this$0:Lcom/fleapapa/helper/InterestSelector;

    const-class v2, Lcom/fleapapa/helper/PhoneChange;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const-string v2, "gps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$8;->this$0:Lcom/fleapapa/helper/InterestSelector;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fleapapa/helper/InterestSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method
