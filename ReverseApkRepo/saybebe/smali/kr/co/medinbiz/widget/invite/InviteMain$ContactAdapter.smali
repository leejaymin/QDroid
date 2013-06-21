.class Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InviteMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/invite/InviteMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lkr/co/medinbiz/dto/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

.field private type:I


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 262
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 263
    sget v0, Lkr/co/medinbiz/R$layout;->invite_main_item:I

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 264
    iput p3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    .line 265
    iput-object p2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    .line 266
    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 260
    iget v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    return v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)Lkr/co/medinbiz/widget/invite/InviteMain;
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 275
    move-object v5, p2

    .line 276
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    .line 277
    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    check-cast v1, Landroid/view/LayoutInflater;

    .line 278
    .local v1, inflater:Landroid/view/LayoutInflater;
    sget v6, Lkr/co/medinbiz/R$layout;->invite_main_item:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 292
    sget v6, Lkr/co/medinbiz/R$id;->name:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 293
    .local v3, name:Landroid/widget/TextView;
    sget v6, Lkr/co/medinbiz/R$id;->status:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 294
    .local v4, status:Landroid/widget/TextView;
    sget v6, Lkr/co/medinbiz/R$id;->btn:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 295
    .local v0, btn:Landroid/widget/Button;
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_1

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_0
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Contact;

    .line 296
    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_2

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_1
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Contact;

    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v6

    .line 299
    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    sget v6, Lkr/co/medinbiz/R$drawable;->btn_limit_style:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 303
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->invite_limit:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    move v2, p1

    .line 307
    .local v2, k:I
    new-instance v6, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;

    invoke-direct {v6, p0, v0, v2}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;Landroid/widget/Button;I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    .end local v2           #k:I
    :cond_0
    :goto_2
    return-object v5

    .line 295
    :cond_1
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    .line 298
    :cond_2
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    .line 333
    :cond_3
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_4

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_3
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Contact;

    .line 334
    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CUT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 337
    sget v6, Lkr/co/medinbiz/R$drawable;->btn_clear_style:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 338
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->invite_clear:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    move v2, p1

    .line 341
    .restart local v2       #k:I
    new-instance v6, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    invoke-direct {v6, p0, v0, v2}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;Landroid/widget/Button;I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 333
    .end local v2           #k:I
    :cond_4
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_3

    .line 367
    :cond_5
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_6

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_4
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Contact;

    .line 368
    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 371
    sget v6, Lkr/co/medinbiz/R$drawable;->btn_invite_style:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 372
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->invite_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_7

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    .line 375
    :goto_5
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Contact;

    .line 376
    .local v2, k:Lkr/co/medinbiz/dto/Contact;
    new-instance v6, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$3;

    invoke-direct {v6, p0, v2}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$3;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;Lkr/co/medinbiz/dto/Contact;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 367
    .end local v2           #k:Lkr/co/medinbiz/dto/Contact;
    :cond_6
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_4

    .line 374
    :cond_7
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_5

    .line 383
    :cond_8
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_9

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_6
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkr/co/medinbiz/dto/Contact;

    .line 384
    invoke-virtual {v6}, Lkr/co/medinbiz/dto/Contact;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    sget v6, Lkr/co/medinbiz/R$drawable;->btn_invite_style:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 388
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    sget v7, Lkr/co/medinbiz/R$string;->invite_title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lkr/co/medinbiz/R$string;->invite_send_ok:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I

    if-ne v6, v8, :cond_a

    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    .line 392
    :goto_7
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkr/co/medinbiz/dto/Contact;

    .line 393
    .restart local v2       #k:Lkr/co/medinbiz/dto/Contact;
    new-instance v6, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;

    invoke-direct {v6, p0, v2}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;Lkr/co/medinbiz/dto/Contact;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 383
    .end local v2           #k:Lkr/co/medinbiz/dto/Contact;
    :cond_9
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_6

    .line 391
    :cond_a
    iget-object v6, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_7
.end method
