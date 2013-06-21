.class Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

.field private final synthetic val$ue:Lcom/fleapapa/helper/CallPapa$UE;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes$BuddyAdapter;Lcom/fleapapa/helper/CallPapa$UE;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    iput-object p2, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;)Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    .locals 1
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v2}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v3, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;

    iget-object v4, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    invoke-direct {v3, p0, v4}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;-><init>(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;Lcom/fleapapa/helper/CallPapa$UE;)V

    .line 389
    const/4 v4, 0x0

    .line 368
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 390
    return-void
.end method
