.class public Lcom/rubycell/pianisthd/UploadActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/EditText;

.field c:Landroid/widget/ImageButton;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/ImageButton;

.field f:Landroid/widget/RadioGroup;

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v1, 0x400

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/UploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/UploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->setContentView(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/UploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/UploadActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->c:Landroid/widget/ImageButton;

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->e:Landroid/widget/ImageButton;

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/UploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->f:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->f:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/rubycell/pianisthd/bv;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bv;-><init>(Lcom/rubycell/pianisthd/UploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->g:I

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstNote"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/rubycell/pianisthd/UploadActivity;->g:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    :goto_0
    iget-object v3, p0, Lcom/rubycell/pianisthd/UploadActivity;->c:Landroid/widget/ImageButton;

    new-instance v4, Lcom/rubycell/pianisthd/bw;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/rubycell/pianisthd/bw;-><init>(Lcom/rubycell/pianisthd/UploadActivity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/UploadActivity;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/bx;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/bx;-><init>(Lcom/rubycell/pianisthd/UploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    move v2, v3

    goto :goto_0

    :pswitch_1
    move v2, v4

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0040
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
