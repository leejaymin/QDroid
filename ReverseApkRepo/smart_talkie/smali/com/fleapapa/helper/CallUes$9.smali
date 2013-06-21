.class Lcom/fleapapa/helper/CallUes$9;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallUes;->setResult(I)V

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallUes;->finish()V

    .line 257
    return-void

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 237
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget-boolean v2, v1, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    if-nez v2, :cond_3

    .line 235
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_3
    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    sget-object v2, Lcom/fleapapa/util/My;->buddies:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_4
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iput-boolean v4, v2, Lcom/fleapapa/helper/CallUes;->bdirty:Z

    .line 244
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v2, :cond_5

    .line 245
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_5
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$9;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->cgrp:Lcom/fleapapa/helper/Group;

    iget-object v2, v2, Lcom/fleapapa/helper/Group;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_6
    sput-boolean v4, Lcom/fleapapa/helper/CallGrps;->gdirty:Z

    goto :goto_1
.end method
