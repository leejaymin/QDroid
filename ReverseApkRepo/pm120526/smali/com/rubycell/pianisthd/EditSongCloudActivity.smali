.class public Lcom/rubycell/pianisthd/EditSongCloudActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/CheckBox;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/RadioGroup;

.field private q:Landroid/widget/RadioButton;

.field private r:Landroid/widget/RadioButton;

.field private s:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "title"

    iget-object v3, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "author"

    iget-object v3, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    iget-object v3, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "firstnode"

    iget-object v3, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "version"

    sget-object v3, Lcom/rubycell/pianisthd/d/b;->U:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "serverid"

    iget-object v3, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->n:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "fileid"

    iget-object v3, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->o:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v6, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->m:I

    :goto_1
    iget v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->a:I

    packed-switch v1, :pswitch_data_1

    move v1, v5

    :goto_2
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "hand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "isactive"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->m:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/rubycell/pianisthd/y;

    invoke-direct {v1, p0, p0}, Lcom/rubycell/pianisthd/y;-><init>(Lcom/rubycell/pianisthd/EditSongCloudActivity;Landroid/content/Context;)V

    new-array v2, v6, [Ljava/util/ArrayList;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/rubycell/pianisthd/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_0
    iput v5, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->m:I

    goto :goto_1

    :pswitch_2
    move v1, v5

    goto :goto_2

    :pswitch_3
    move v1, v6

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_2

    :cond_1
    const-string v0, "Title cannot be empty "

    const/16 v1, 0x1f4

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0043
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a0040
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->setContentView(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->b:Ljava/lang/String;

    const-string v1, "author"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->c:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->d:Ljava/lang/String;

    const-string v1, "hand"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->e:I

    const-string v1, "startnote"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->k:Ljava/lang/String;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->n:Ljava/lang/String;

    const-string v1, "fileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->o:Ljava/lang/String;

    const-string v1, "isactive"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->m:I

    :cond_1
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->l:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->m:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->i:Landroid/widget/ImageButton;

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->q:Landroid/widget/RadioButton;

    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->s:Landroid/widget/RadioButton;

    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->r:Landroid/widget/RadioButton;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/EditSongCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->p:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->p:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/rubycell/pianisthd/x;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/x;-><init>(Lcom/rubycell/pianisthd/EditSongCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->p:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->a:I

    iget v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->e:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->l:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->q:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->s:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/EditSongCloudActivity;->r:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
