.class Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;
.super Ljava/lang/Object;
.source "CallGrps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallGrps$GroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

.field private final synthetic val$grp:Lcom/fleapapa/helper/Group;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallGrps$GroupAdapter;Lcom/fleapapa/helper/Group;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    iput-object p2, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->val$grp:Lcom/fleapapa/helper/Group;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;)Lcom/fleapapa/helper/CallGrps$GroupAdapter;
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    #getter for: Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;
    invoke-static {v0}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter;)Lcom/fleapapa/helper/CallGrps;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    #getter for: Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;
    invoke-static {v1}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter;)Lcom/fleapapa/helper/CallGrps;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->this$1:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    #getter for: Lcom/fleapapa/helper/CallGrps$GroupAdapter;->this$0:Lcom/fleapapa/helper/CallGrps;
    invoke-static {v2}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->access$0(Lcom/fleapapa/helper/CallGrps$GroupAdapter;)Lcom/fleapapa/helper/CallGrps;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallGrps;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;

    iget-object v4, p0, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;->val$grp:Lcom/fleapapa/helper/Group;

    invoke-direct {v3, p0, v4}, Lcom/fleapapa/helper/CallGrps$GroupAdapter$1$1;-><init>(Lcom/fleapapa/helper/CallGrps$GroupAdapter$1;Lcom/fleapapa/helper/Group;)V

    .line 169
    const/4 v4, 0x0

    .line 159
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    return-void
.end method
