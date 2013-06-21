.class public Lkr/co/medinbiz/widget/invite/InviteMain;
.super Ljava/lang/Object;
.source "InviteMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;,
        Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;
    }
.end annotation


# static fields
.field private static FirstListCount:Ljava/lang/Integer;

.field private static isFirstIn:Z


# instance fields
.field private cDialog:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

.field private conList1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private conList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private http:Lkr/co/medinbiz/helper/HttpManager;

.field private mAdapter1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

.field private mAdapter2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

.field private mContext:Landroid/content/Context;

.field private mMain:Landroid/widget/LinearLayout;

.field private mRepeated:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mlist1:Landroid/widget/ListView;

.field private mlist2:Landroid/widget/ListView;

.field sendSMSHandler:Landroid/os/Handler;

.field private widget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/invite/InviteMain;->FirstListCount:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 15
    .parameter "context"
    .parameter "aMain"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mRepeated:Ljava/util/HashMap;

    .line 230
    new-instance v1, Lkr/co/medinbiz/widget/invite/InviteMain$1;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/invite/InviteMain$1;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;

    .line 538
    new-instance v1, Lkr/co/medinbiz/widget/invite/InviteMain$2;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/invite/InviteMain$2;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->sendSMSHandler:Landroid/os/Handler;

    .line 63
    move-object/from16 v0, p1

    iput-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    .line 64
    move-object/from16 v0, p2

    iput-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mMain:Landroid/widget/LinearLayout;

    .line 65
    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->http:Lkr/co/medinbiz/helper/HttpManager;

    .line 67
    const-string v1, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 66
    check-cast v10, Landroid/view/LayoutInflater;

    .line 68
    .local v10, inflater:Landroid/view/LayoutInflater;
    invoke-static/range {p1 .. p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_3

    .line 69
    sget v1, Lkr/co/medinbiz/R$layout;->invite_main_160:I

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->widget:Landroid/view/View;

    .line 74
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    const-string v6, "display_name"

    .line 74
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 79
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;

    .line 80
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 123
    if-eqz v8, :cond_1

    .line 124
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->con_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mlist1:Landroid/widget/ListView;

    .line 131
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->con_list2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mlist2:Landroid/widget/ListView;

    .line 132
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mlist1:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mlist2:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-direct {p0}, Lkr/co/medinbiz/widget/invite/InviteMain;->listInit()V

    .line 135
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mMain:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mMain:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->widget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    sget-boolean v1, Lkr/co/medinbiz/widget/invite/InviteMain;->isFirstIn:Z

    if-nez v1, :cond_2

    .line 139
    sget v1, Lkr/co/medinbiz/R$string;->first_invite:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    sput-boolean v1, Lkr/co/medinbiz/widget/invite/InviteMain;->isFirstIn:Z

    .line 142
    :cond_2
    return-void

    .line 71
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    sget v1, Lkr/co/medinbiz/R$layout;->invite_main:I

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->widget:Landroid/view/View;

    goto :goto_0

    .line 82
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_4
    const-string v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 84
    .local v14, phone_idx:I
    const-string v1, "display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 86
    .local v12, name_idx:I
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->checkNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 88
    .local v13, phoneNum:Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, name:Ljava/lang/String;
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mRepeated:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 90
    if-eqz v13, :cond_0

    .line 94
    new-instance v7, Lkr/co/medinbiz/dto/Contact;

    invoke-direct {v7}, Lkr/co/medinbiz/dto/Contact;-><init>()V

    .line 95
    .local v7, contact:Lkr/co/medinbiz/dto/Contact;
    invoke-virtual {v7, v13}, Lkr/co/medinbiz/dto/Contact;->setHp(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7, v11}, Lkr/co/medinbiz/dto/Contact;->setName(Ljava/lang/String;)V

    .line 97
    const-string v1, "NO"

    invoke-virtual {v7, v1}, Lkr/co/medinbiz/dto/Contact;->setStatus(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mRepeated:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 126
    .end local v7           #contact:Lkr/co/medinbiz/dto/Contact;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #name_idx:I
    .end local v13           #phoneNum:Ljava/lang/String;
    .end local v14           #phone_idx:I
    :catch_0
    move-exception v9

    .line 127
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/invite/InviteMain;->listSort(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lkr/co/medinbiz/widget/invite/InviteMain;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lkr/co/medinbiz/widget/invite/InviteMain;->listInit()V

    return-void
.end method

.method static synthetic access$12()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lkr/co/medinbiz/widget/invite/InviteMain;->FirstListCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$13(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    sput-object p0, Lkr/co/medinbiz/widget/invite/InviteMain;->FirstListCount:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$14(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/helper/HttpManager;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->http:Lkr/co/medinbiz/helper/HttpManager;

    return-object v0
.end method

.method static synthetic access$15(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$16(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$17(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$18(Lkr/co/medinbiz/widget/invite/InviteMain;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/invite/InviteMain;Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    return-void
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/invite/InviteMain;Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    return-void
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mlist1:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mAdapter1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mlist2:Landroid/widget/ListView;

    return-object v0
.end method

.method private checkNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNum"

    .prologue
    .line 145
    const-string v2, ""

    .line 147
    .local v2, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    .end local v2           #ret:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 148
    .restart local v2       #ret:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 149
    .local v1, numCheck:C
    const/16 v3, 0x2f

    if-le v1, v3, :cond_1

    const/16 v3, 0x3a

    if-ge v1, v3, :cond_1

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1           #numCheck:C
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private listInit()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->invite_wait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->dialog:Landroid/app/ProgressDialog;

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkr/co/medinbiz/widget/invite/InviteMain$3;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/widget/invite/InviteMain$3;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method private listSort(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Contact;>;"
    new-instance v0, Lkr/co/medinbiz/widget/invite/InviteMain$4;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/invite/InviteMain$4;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 415
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 536
    return-void
.end method

.method showSMSDailog(Ljava/lang/String;)V
    .locals 4
    .parameter "aPhone"

    .prologue
    .line 418
    new-instance v0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->invite:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->cDialog:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    .line 419
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain;->cDialog:Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->show()V

    .line 420
    return-void
.end method
