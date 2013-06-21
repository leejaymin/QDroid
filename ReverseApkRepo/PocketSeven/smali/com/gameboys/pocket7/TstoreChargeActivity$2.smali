.class Lcom/gameboys/pocket7/TstoreChargeActivity$2;
.super Ljava/lang/Object;
.source "TstoreChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/TstoreChargeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/TstoreChargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$2;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$2;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/TstoreChargeActivity;->setResult(I)V

    .line 79
    iget-object v0, p0, Lcom/gameboys/pocket7/TstoreChargeActivity$2;->this$0:Lcom/gameboys/pocket7/TstoreChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/TstoreChargeActivity;->finish()V

    .line 80
    return-void
.end method
