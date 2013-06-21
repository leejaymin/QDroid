.class public Limoblife/toolbox/full/ui/ASystemInfo;
.super Landroid/app/Activity;


# instance fields
.field a:[Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "processor"

    aput-object v1, v0, v3

    const-string v1, "bogoMIDS"

    aput-object v1, v0, v4

    const-string v1, "imei"

    aput-object v1, v0, v5

    const-string v1, "deviceSoftwarVersion"

    aput-object v1, v0, v6

    const-string v1, "hardware"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "systemOs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "systemOsVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "systemLanuage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "systemEncoding"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "systemRegion"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "jvmVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "javaClassVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "javaVendor"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "javaHome"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "jvmSpecification"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "jvmSpecificationversion"

    aput-object v2, v0, v1

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->c:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "os.name"

    aput-object v1, v0, v3

    const-string v1, "os.version"

    aput-object v1, v0, v4

    const-string v1, "user.language"

    aput-object v1, v0, v5

    const-string v1, "file.encoding"

    aput-object v1, v0, v6

    const-string v1, "user.region"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "java.vm.version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "java.class.version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "java.vm.vendor"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "java.home"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "java.vm.specification.name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "java.runtime.version"

    aput-object v2, v0, v1

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->e:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x5

    const/4 v5, -0x2

    const/high16 v4, 0x4180

    const/4 v3, -0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v2, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->setContentView(I)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f07015e

    invoke-virtual {p0, v5}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v5, Limoblife/toolbox/full/ui/bx;

    invoke-direct {v5, p0}, Limoblife/toolbox/full/ui/bx;-><init>(Limoblife/toolbox/full/ui/ASystemInfo;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->f:Landroid/widget/LinearLayout;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_3

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    :goto_1
    if-nez v5, :cond_4

    :goto_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    move v0, v2

    :goto_3
    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_8

    move v0, v1

    :goto_4
    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_9

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    const v3, 0x7f070160

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    const v3, 0x7f070161

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    const v3, 0x7f070162

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    const/4 v3, 0x3

    const v5, 0x7f070163

    invoke-virtual {p0, v5}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    const v5, 0x7f070164

    invoke-virtual {p0, v5}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    move v0, v1

    move v3, v1

    :goto_5
    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_a

    :cond_0
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASystemInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->h:Landroid/widget/LinearLayout;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    move v0, v1

    :goto_6
    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_b

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const v3, 0x7f070166

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const v3, 0x7f070167

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const v3, 0x7f070168

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/4 v3, 0x3

    const v4, 0x7f070169

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x7f07016a

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const v3, 0x7f07016c

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/4 v3, 0x6

    const v4, 0x7f07016d

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/4 v3, 0x7

    const v4, 0x7f07016e

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/16 v3, 0x8

    const v4, 0x7f07016f

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/16 v3, 0x9

    const v4, 0x7f070170

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const/16 v3, 0xa

    const v4, 0x7f070171

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ASystemInfo;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    move v0, v1

    :goto_7
    if-ge v0, v2, :cond_1

    if-lt v1, v2, :cond_c

    :cond_1
    move v0, v2

    :goto_8
    iget-object v1, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Limoblife/toolbox/full/ui/ASystemInfo;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lt v2, v1, :cond_d

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    const-string v6, "undefined"

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v0, "Processor"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_9
    if-eq v0, v3, :cond_5

    iget-object v7, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    :cond_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    :cond_6
    const-string v0, "BogoMIPS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_9

    :cond_7
    const-string v0, "Hardware"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->c:[Ljava/lang/String;

    add-int/lit8 v6, v0, -0x5

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-SystemInfo- preference = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_a
    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->f:Landroid/widget/LinearLayout;

    iget-object v6, p0, Limoblife/toolbox/full/ui/ASystemInfo;->b:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Limoblife/toolbox/full/ui/ASystemInfo;->a:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {p0, v5, v6, v7}, Limoblife/toolbox/full/ui/ASystemInfo;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_b
    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    const-string v5, "undefined"

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_c
    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->e:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Limoblife/toolbox/full/ui/ASystemInfo;->g:Landroid/widget/LinearLayout;

    iget-object v5, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v4, v5, v3}, Limoblife/toolbox/full/ui/ASystemInfo;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_d
    iget-object v1, p0, Limoblife/toolbox/full/ui/ASystemInfo;->e:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Limoblife/toolbox/full/ui/ASystemInfo;->h:Landroid/widget/LinearLayout;

    iget-object v4, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v4, v1}, Limoblife/toolbox/full/ui/ASystemInfo;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_e
    move v0, v3

    goto/16 :goto_9
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->d:[Ljava/lang/String;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASystemInfo;->e:[Ljava/lang/String;

    return-void
.end method
