.class Lcom/sugree/twitter/TwDialog$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/twitter/TwDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sugree/twitter/TwDialog$2;


# direct methods
.method constructor <init>(Lcom/sugree/twitter/TwDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog$2$1;->this$1:Lcom/sugree/twitter/TwDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$2$1;->this$1:Lcom/sugree/twitter/TwDialog$2;

    iget-object v0, v0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$500(Lcom/sugree/twitter/TwDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$2$1;->this$1:Lcom/sugree/twitter/TwDialog$2;

    iget-object v0, v0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog;->dismiss()V

    return-void
.end method
