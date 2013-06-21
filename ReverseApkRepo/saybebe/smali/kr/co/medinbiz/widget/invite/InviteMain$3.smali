.class Lkr/co/medinbiz/widget/invite/InviteMain$3;
.super Ljava/lang/Object;
.source "InviteMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/invite/InviteMain;->listInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/invite/InviteMain;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 174
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$14(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v3

    invoke-virtual {v3}, Lkr/co/medinbiz/helper/HttpManager;->contactList()Lkr/co/medinbiz/dto/ContactList;

    move-result-object v1

    .line 175
    .local v1, contactList:Lkr/co/medinbiz/dto/ContactList;
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$17(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V

    .line 176
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$18(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V

    .line 177
    if-eqz v1, :cond_b

    .line 179
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/ContactList;->getResult()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 180
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/ContactList;->getContacts()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/ContactList;->getContacts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 205
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 215
    :cond_2
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$15(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    :cond_3
    :goto_2
    return-void

    .line 182
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Contact;

    .line 184
    .local v2, row:Lkr/co/medinbiz/dto/Contact;
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getHp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Contact;

    .line 186
    .local v0, c:Lkr/co/medinbiz/dto/Contact;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkr/co/medinbiz/dto/Contact;->setStatus(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v0           #c:Lkr/co/medinbiz/dto/Contact;
    :cond_5
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 191
    const-string v5, "SENT"

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 192
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getHp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Contact;

    .line 193
    .restart local v0       #c:Lkr/co/medinbiz/dto/Contact;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkr/co/medinbiz/dto/Contact;->setStatus(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 198
    .end local v0           #c:Lkr/co/medinbiz/dto/Contact;
    :cond_6
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getHp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Contact;

    .line 199
    .restart local v0       #c:Lkr/co/medinbiz/dto/Contact;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkr/co/medinbiz/dto/Contact;->setStatus(Ljava/lang/String;)V

    .line 201
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 205
    .end local v0           #c:Lkr/co/medinbiz/dto/Contact;
    .end local v2           #row:Lkr/co/medinbiz/dto/Contact;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Contact;

    .line 206
    .restart local v0       #c:Lkr/co/medinbiz/dto/Contact;
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 211
    .end local v0           #c:Lkr/co/medinbiz/dto/Contact;
    :cond_8
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Contact;

    .line 212
    .restart local v0       #c:Lkr/co/medinbiz/dto/Contact;
    iget-object v4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v4}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 216
    .end local v0           #c:Lkr/co/medinbiz/dto/Contact;
    :cond_9
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/ContactList;->getResult()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 217
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$15(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 218
    :cond_a
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/ContactList;->getResult()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ERR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$15(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 222
    :cond_b
    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$3;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$15(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method
