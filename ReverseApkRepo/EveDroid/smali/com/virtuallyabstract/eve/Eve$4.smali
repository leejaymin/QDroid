.class Lcom/virtuallyabstract/eve/Eve$4;
.super Ljava/lang/Thread;
.source "Eve.java"


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

.field private final synthetic val$charinfo:[Ljava/lang/String;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/virtuallyabstract/eve/Eve;[Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/virtuallyabstract/eve/Eve$4;->this$0:Lcom/virtuallyabstract/eve/Eve;

    iput-object p2, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$charinfo:[Ljava/lang/String;

    iput-object p3, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$pd:Landroid/app/ProgressDialog;

    .line 145
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve$4;->this$0:Lcom/virtuallyabstract/eve/Eve;

    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$charinfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$charinfo:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$charinfo:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$charinfo:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    #calls: Lcom/virtuallyabstract/eve/Eve;->populateCharInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/virtuallyabstract/eve/Eve;->access$0(Lcom/virtuallyabstract/eve/Eve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve$4;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    return-void
.end method
