.class final Lcom/inisoft/mediaplayer/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static synthetic i:[I


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/bj;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/widget/CheckBox;

.field private final synthetic d:Landroid/widget/EditText;

.field private final synthetic e:Landroid/widget/EditText;

.field private final synthetic f:Landroid/widget/EditText;

.field private final synthetic g:Landroid/widget/Spinner;

.field private final synthetic h:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/bj;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/bm;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/bm;->c:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/bm;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/inisoft/mediaplayer/bm;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/inisoft/mediaplayer/bm;->f:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/inisoft/mediaplayer/bm;->g:Landroid/widget/Spinner;

    iput-object p8, p0, Lcom/inisoft/mediaplayer/bm;->h:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/bm;->i:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/bs;->values()[Lcom/inisoft/mediaplayer/bs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->f:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->e:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/inisoft/mediaplayer/bm;->i:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const v7, 0x7f0a0049

    const v2, 0x7f0a004c

    const/4 v6, 0x0

    invoke-static {}, Lcom/inisoft/mediaplayer/bm;->a()[I

    move-result-object v0

    invoke-static {}, Lcom/inisoft/mediaplayer/bj;->a()Lcom/inisoft/mediaplayer/bs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "samba://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smb://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "samba://"

    const-string v2, "smb://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, ""

    const-string v4, ""

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error ID is Empty"

    invoke-static {v0, v7, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error URL is Empty"

    invoke-static {v0, v2, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, ""

    :cond_6
    new-instance v0, Lcom/inisoft/mediaplayer/bp;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;Lcom/inisoft/mediaplayer/bp;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "ftp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ftp://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v4, ""

    const-string v5, ""

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error ID is Empty"

    invoke-static {v0, v7, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error URL is Empty"

    invoke-static {v0, v2, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    const-string v5, ""

    :cond_b
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    :cond_c
    const-string v3, "21"

    :cond_d
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->g:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v6, v0, v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->b(Lcom/inisoft/mediaplayer/bj;)Lcom/inisoft/mediaplayer/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/inisoft/mediaplayer/hw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v6, "Default"

    :cond_e
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    new-instance v0, Lcom/inisoft/mediaplayer/bp;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-direct/range {v0 .. v7}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;Lcom/inisoft/mediaplayer/bp;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a004a

    const-string v2, "Error, please check port"

    invoke-static {v0, v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "udp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->b(Lcom/inisoft/mediaplayer/bj;)Lcom/inisoft/mediaplayer/bo;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/inisoft/mediaplayer/bp;

    sget-object v2, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {v1, v2, v0}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;Lcom/inisoft/mediaplayer/bp;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error URL is Empty"

    invoke-static {v0, v2, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/bm;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/bj;->a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    move-object v2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
