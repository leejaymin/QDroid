.class Lcom/fleapapa/helper/InterestSelector$10;
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
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$10;->this$0:Lcom/fleapapa/helper/InterestSelector;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$10;->this$0:Lcom/fleapapa/helper/InterestSelector;

    invoke-virtual {v0}, Lcom/fleapapa/helper/InterestSelector;->sign_in_out()V

    .line 158
    return-void
.end method
