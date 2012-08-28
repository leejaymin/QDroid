.class Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PubkeyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/PubkeyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PubkeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/connectbot/bean/PubkeyBean;",
        ">;"
    }
.end annotation


# instance fields
.field private pubkeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PubkeyBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;


# direct methods
.method public constructor <init>(Lorg/connectbot/PubkeyListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PubkeyBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p3, pubkeys:Ljava/util/List;,"Ljava/util/List<Lorg/connectbot/bean/PubkeyBean;>;"
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;->this$0:Lorg/connectbot/PubkeyListActivity;

    .line 627
    const v0, 0x7f030010

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 629
    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;->pubkeys:Ljava/util/List;

    .line 630
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 636
    if-nez p2, :cond_0

    .line 637
    iget-object v6, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v6, v6, Lorg/connectbot/PubkeyListActivity;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030010

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 639
    new-instance v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;-><init>(Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;)V

    .line 641
    .local v1, holder:Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    .line 642
    const v6, 0x1020015

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    .line 643
    const v6, 0x1020007

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 645
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 649
    :goto_0
    iget-object v6, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;->pubkeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/connectbot/bean/PubkeyBean;

    .line 650
    .local v3, pubkey:Lorg/connectbot/bean/PubkeyBean;
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->nickname:Landroid/widget/TextView;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const-string v6, "IMPORTED"

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 654
    .local v2, imported:Z
    if-eqz v2, :cond_2

    .line 656
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6}, Lcom/trilead/ssh2/crypto/PEMDecoder;->parsePEM([C)Lcom/trilead/ssh2/crypto/PEMStructure;

    move-result-object v4

    .line 657
    .local v4, struct:Lcom/trilead/ssh2/crypto/PEMStructure;
    iget v6, v4, Lcom/trilead/ssh2/crypto/PEMStructure;->pemType:I

    if-ne v6, v11, :cond_1

    const-string v5, "RSA"

    .line 658
    .local v5, type:Ljava/lang/String;
    :goto_1
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    const-string v7, "%s unknown-bit"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .end local v4           #struct:Lcom/trilead/ssh2/crypto/PEMStructure;
    .end local v5           #type:Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v6, v6, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-nez v6, :cond_3

    .line 672
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    :goto_3
    return-object p2

    .line 647
    .end local v1           #holder:Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;
    .end local v2           #imported:Z
    .end local v3           #pubkey:Lorg/connectbot/bean/PubkeyBean;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;

    .restart local v1       #holder:Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;
    goto :goto_0

    .line 657
    .restart local v2       #imported:Z
    .restart local v3       #pubkey:Lorg/connectbot/bean/PubkeyBean;
    .restart local v4       #struct:Lcom/trilead/ssh2/crypto/PEMStructure;
    :cond_1
    :try_start_1
    const-string v5, "DSA"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 659
    .end local v4           #struct:Lcom/trilead/ssh2/crypto/PEMStructure;
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Ljava/io/IOException;
    const-string v6, "ConnectBot.PubkeyListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error decoding IMPORTED public key at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 664
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 665
    :catch_1
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ConnectBot.PubkeyListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error decoding public key at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->caption:Landroid/widget/TextView;

    const v7, 0x7f08001d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 674
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v6, p0, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v6, v6, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/connectbot/service/TerminalManager;->isKeyLoaded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 677
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-array v7, v11, [I

    const v8, 0x10100a0

    aput v8, v7, v10

    invoke-virtual {v6, v7, v11}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_3

    .line 679
    :cond_4
    iget-object v6, v1, Lorg/connectbot/PubkeyListActivity$PubkeyAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-array v7, v10, [I

    invoke-virtual {v6, v7, v11}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_3
.end method
