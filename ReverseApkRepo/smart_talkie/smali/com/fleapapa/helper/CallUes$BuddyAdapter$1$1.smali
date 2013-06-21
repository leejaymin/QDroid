.class Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

.field private final synthetic val$ue:Lcom/fleapapa/helper/CallPapa$UE;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;Lcom/fleapapa/helper/CallPapa$UE;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    iput-object p2, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichMyImageButton"

    .prologue
    const/4 v4, 0x1

    .line 374
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;)Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    move-result-object v1

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    if-ne v1, v2, :cond_1

    .line 375
    sget-object v1, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 379
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;)Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    move-result-object v1

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v1

    iput-boolean v4, v1, Lcom/fleapapa/helper/CallUes;->bdirty:Z

    .line 380
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$UE;->block()V

    .line 383
    :cond_1
    sput-boolean v4, Lcom/fleapapa/helper/CallGrps;->gdirty:Z

    .line 384
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;)Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    move-result-object v1

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->remove(Ljava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;)Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    move-result-object v1

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    iget-object v1, v1, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->this$2:Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->this$1:Lcom/fleapapa/helper/CallUes$BuddyAdapter;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter$1;)Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    move-result-object v1

    #getter for: Lcom/fleapapa/helper/CallUes$BuddyAdapter;->this$0:Lcom/fleapapa/helper/CallUes;
    invoke-static {v1}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->access$0(Lcom/fleapapa/helper/CallUes$BuddyAdapter;)Lcom/fleapapa/helper/CallUes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallUes;->updateTexts()V

    .line 387
    :goto_0
    return-void

    .line 375
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Group;

    .line 376
    .local v0, g:Lcom/fleapapa/helper/Group;
    iget-object v2, v0, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    sget-object v3, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v3, v3, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    iget-object v2, v0, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/fleapapa/helper/CallUes$BuddyAdapter$1$1;->val$ue:Lcom/fleapapa/helper/CallPapa$UE;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
