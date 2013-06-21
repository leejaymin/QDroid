.class Lcom/virtuallyabstract/eve/Eve$3;
.super Ljava/lang/Object;
.source "Eve.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virtuallyabstract/eve/Eve;->selectChar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/virtuallyabstract/eve/Eve;


# direct methods
.method constructor <init>(Lcom/virtuallyabstract/eve/Eve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/virtuallyabstract/eve/Eve$3;->this$0:Lcom/virtuallyabstract/eve/Eve;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve$3;->this$0:Lcom/virtuallyabstract/eve/Eve;

    #calls: Lcom/virtuallyabstract/eve/Eve;->updateScreen()V
    invoke-static {v0}, Lcom/virtuallyabstract/eve/Eve;->access$7(Lcom/virtuallyabstract/eve/Eve;)V

    .line 143
    return-void
.end method
