.class Lcom/fleapapa/helper/PhoneChange$1;
.super Ljava/lang/Object;
.source "PhoneChange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/PhoneChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/PhoneChange;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/PhoneChange;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$1;->this$0:Lcom/fleapapa/helper/PhoneChange;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fleapapa/helper/PhoneChange$1;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-virtual {v0}, Lcom/fleapapa/helper/PhoneChange;->finish()V

    .line 65
    return-void
.end method
