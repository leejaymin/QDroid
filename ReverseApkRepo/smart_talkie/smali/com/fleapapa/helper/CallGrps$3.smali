.class Lcom/fleapapa/helper/CallGrps$3;
.super Ljava/lang/Object;
.source "CallGrps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallGrps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallGrps;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallGrps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallGrps$3;->this$0:Lcom/fleapapa/helper/CallGrps;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$3;->this$0:Lcom/fleapapa/helper/CallGrps;

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallGrps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 91
    .local v0, eName:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v1, Lcom/fleapapa/helper/Group;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fleapapa/helper/Group;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, grp:Lcom/fleapapa/helper/Group;
    iget-object v2, p0, Lcom/fleapapa/helper/CallGrps$3;->this$0:Lcom/fleapapa/helper/CallGrps;

    iget-object v2, v2, Lcom/fleapapa/helper/CallGrps;->gadapter:Lcom/fleapapa/helper/CallGrps$GroupAdapter;

    invoke-virtual {v2, v1}, Lcom/fleapapa/helper/CallGrps$GroupAdapter;->add(Ljava/lang/Object;)V

    .line 97
    sget-object v2, Lcom/fleapapa/helper/CallGrps;->groups:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/fleapapa/helper/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
