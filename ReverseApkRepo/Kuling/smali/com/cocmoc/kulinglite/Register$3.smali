.class Lcom/cocmoc/kulinglite/Register$3;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Register;

.field private final synthetic val$SMSText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Register;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Register$3;->this$0:Lcom/cocmoc/kulinglite/Register;

    iput-object p2, p0, Lcom/cocmoc/kulinglite/Register$3;->val$SMSText:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register$3;->this$0:Lcom/cocmoc/kulinglite/Register;

    const-string v1, "72345"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Register$3;->val$SMSText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cocmoc/kulinglite/Register;->Send(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
