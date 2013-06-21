.class Lcom/virtuallyabstract/eve/Eve$CharInfoThread;
.super Ljava/lang/Object;
.source "Eve.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/virtuallyabstract/eve/Eve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharInfoThread"
.end annotation


# instance fields
.field private charID:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/virtuallyabstract/eve/Eve;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/virtuallyabstract/eve/Eve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "charID"
    .parameter "userID"
    .parameter "key"
    .parameter "pd"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->this$0:Lcom/virtuallyabstract/eve/Eve;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->name:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->charID:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->userID:Ljava/lang/String;

    .line 193
    iput-object p5, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->key:Ljava/lang/String;

    .line 194
    iput-object p6, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->pd:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->this$0:Lcom/virtuallyabstract/eve/Eve;

    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->charID:Ljava/lang/String;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->userID:Ljava/lang/String;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->key:Ljava/lang/String;

    #calls: Lcom/virtuallyabstract/eve/Eve;->populateCharInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/virtuallyabstract/eve/Eve;->access$0(Lcom/virtuallyabstract/eve/Eve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve$CharInfoThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 201
    return-void
.end method
