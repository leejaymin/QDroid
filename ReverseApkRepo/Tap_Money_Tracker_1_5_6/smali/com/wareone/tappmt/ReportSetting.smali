.class public Lcom/wareone/tappmt/ReportSetting;
.super Landroid/app/Activity;
.source "ReportSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_group:[Ljava/lang/String;

.field private m_group_index:I

.field private m_range:[Ljava/lang/String;

.field private m_type:[Ljava/lang/String;

.field private m_type_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/wareone/tappmt/ReportSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/ReportSetting;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 211
    iput v0, p0, Lcom/wareone/tappmt/ReportSetting;->m_type_index:I

    .line 212
    iput v0, p0, Lcom/wareone/tappmt/ReportSetting;->m_group_index:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/ReportSetting;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput p1, p0, Lcom/wareone/tappmt/ReportSetting;->m_type_index:I

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/ReportSetting;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput p1, p0, Lcom/wareone/tappmt/ReportSetting;->m_group_index:I

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/ReportSetting;)I
    .locals 1
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lcom/wareone/tappmt/ReportSetting;->m_type_index:I

    return v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/ReportSetting;)I
    .locals 1
    .parameter

    .prologue
    .line 212
    iget v0, p0, Lcom/wareone/tappmt/ReportSetting;->m_group_index:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x1090009

    const v11, 0x1090008

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v9, 0x7f030036

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/wareone/tappmt/ReportSetting;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 32
    .local v6, extra:Landroid/os/Bundle;
    const-string v9, "RANGE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;

    .line 33
    const-string v9, "TYPE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_type_index:I

    .line 34
    const-string v9, "GROUPBY"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_group_index:I

    .line 35
    invoke-virtual {p0}, Lcom/wareone/tappmt/ReportSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_type:[Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/wareone/tappmt/ReportSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070002

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_group:[Ljava/lang/String;

    .line 38
    const v9, 0x7f0c00a1

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 39
    .local v4, edtFrom:Landroid/widget/EditText;
    new-instance v9, Lcom/wareone/tappmt/ReportSetting$1;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/ReportSetting$1;-><init>(Lcom/wareone/tappmt/ReportSetting;)V

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v9, 0x7f0c00a3

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 79
    .local v5, edtTo:Landroid/widget/EditText;
    iget-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v9, Lcom/wareone/tappmt/ReportSetting$2;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/ReportSetting$2;-><init>(Lcom/wareone/tappmt/ReportSetting;)V

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v9, 0x7f0c0013

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 120
    .local v7, s1:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 121
    iget-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_type:[Ljava/lang/String;

    .line 120
    invoke-direct {v0, p0, v11, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 122
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 123
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_type_index:I

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 125
    new-instance v9, Lcom/wareone/tappmt/ReportSetting$3;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/ReportSetting$3;-><init>(Lcom/wareone/tappmt/ReportSetting;)V

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 141
    const v9, 0x7f0c00a4

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 142
    .local v8, sp_group:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 143
    iget-object v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_group:[Ljava/lang/String;

    .line 142
    invoke-direct {v1, p0, v11, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 144
    .local v1, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 146
    iget v9, p0, Lcom/wareone/tappmt/ReportSetting;->m_group_index:I

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 147
    new-instance v9, Lcom/wareone/tappmt/ReportSetting$4;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/ReportSetting$4;-><init>(Lcom/wareone/tappmt/ReportSetting;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    const v9, 0x7f0c0088

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 165
    .local v3, btn_ok:Landroid/widget/Button;
    new-instance v9, Lcom/wareone/tappmt/ReportSetting$5;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/ReportSetting$5;-><init>(Lcom/wareone/tappmt/ReportSetting;)V

    .line 164
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v9, 0x7f0c0011

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 196
    .local v2, btn_cancel:Landroid/widget/Button;
    new-instance v9, Lcom/wareone/tappmt/ReportSetting$6;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/ReportSetting$6;-><init>(Lcom/wareone/tappmt/ReportSetting;)V

    .line 195
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method
