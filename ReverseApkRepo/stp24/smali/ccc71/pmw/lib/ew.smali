.class public final Lccc71/pmw/lib/ew;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field private static final a:[I

.field private static synthetic d:[I


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lccc71/pmw/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccc71/pmw/lib/ew;->a:[I

    .line 25
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lccc71/pmw/b/f;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lccc71/pmw/b/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    .line 35
    iput-object p1, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, v4}, Lccc71/pmw/lib/ew;->requestWindowFeature(I)Z

    .line 38
    sget v0, Lccc71/pmw/lib/e;->bs:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->setContentView(I)V

    .line 39
    invoke-static {p1}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;)Lccc71/pmw/b/f;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    .line 40
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    invoke-virtual {v0}, Lccc71/pmw/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    sget-object v2, Lccc71/pmw/b/g;->b:Lccc71/pmw/b/g;

    iput-object v2, v0, Lccc71/pmw/b/f;->a:Lccc71/pmw/b/g;

    .line 45
    iget-object v7, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, v7, Lccc71/pmw/b/f;->b:Ljava/util/Date;

    .line 47
    :cond_0
    sget v0, Lccc71/pmw/lib/d;->fI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    .line 48
    iget-object v2, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 53
    :goto_0
    invoke-direct {p0}, Lccc71/pmw/lib/ew;->a()V

    .line 55
    sget v1, Lccc71/pmw/lib/d;->gr:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    sget v1, Lccc71/pmw/lib/d;->gs:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    sget v1, Lccc71/pmw/lib/d;->gq:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    sget v1, Lccc71/pmw/lib/d;->iE:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 63
    sget v0, Lccc71/pmw/lib/d;->aD:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    sget v0, Lccc71/pmw/lib/d;->aE:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    sget v0, Lccc71/pmw/lib/d;->R:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Lccc71/pmw/lib/d;->p:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lccc71/pmw/lib/d;->y:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void

    .line 51
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private a()V
    .locals 9

    .prologue
    const/16 v8, 0x1c

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 142
    sget v0, Lccc71/pmw/lib/d;->iE:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 143
    sget v1, Lccc71/pmw/lib/d;->iF:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 149
    sget v1, Lccc71/pmw/lib/d;->aD:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-boolean v2, v2, Lccc71/pmw/b/f;->c:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    sget v1, Lccc71/pmw/lib/d;->aE:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-boolean v2, v2, Lccc71/pmw/b/f;->d:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    sget v1, Lccc71/pmw/lib/d;->fI:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .line 155
    iget-object v2, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-object v2, v2, Lccc71/pmw/b/f;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 156
    iget-object v2, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-object v2, v2, Lccc71/pmw/b/f;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 160
    invoke-static {}, Lccc71/pmw/lib/ew;->b()[I

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-object v2, v2, Lccc71/pmw/b/f;->a:Lccc71/pmw/b/g;

    invoke-virtual {v2}, Lccc71/pmw/b/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 212
    const/4 v2, 0x0

    .line 213
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 215
    sget v1, Lccc71/pmw/lib/d;->gq:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    sget v1, Lccc71/pmw/lib/d;->gr:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 217
    sget v1, Lccc71/pmw/lib/d;->gs:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    move-object v1, v2

    .line 223
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget v2, v2, Lccc71/pmw/b/f;->e:I

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 224
    iget-object v1, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget v1, v1, Lccc71/pmw/b/f;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 226
    :cond_0
    return-void

    .line 165
    :pswitch_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 167
    sget v1, Lccc71/pmw/lib/d;->gq:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 168
    sget v1, Lccc71/pmw/lib/d;->gs:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 169
    sget v1, Lccc71/pmw/lib/d;->gr:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 173
    new-array v2, v8, [Ljava/lang/String;

    .line 174
    :goto_1
    if-lt v3, v8, :cond_1

    .line 179
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 180
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 182
    iget-object v2, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    sget v3, Lccc71/pmw/lib/g;->eP:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :pswitch_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 190
    sget v1, Lccc71/pmw/lib/d;->gq:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 191
    sget v1, Lccc71/pmw/lib/d;->gs:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 192
    sget v1, Lccc71/pmw/lib/d;->gr:I

    invoke-virtual {p0, v1}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 196
    new-array v2, v6, [Ljava/lang/String;

    move v1, v3

    .line 197
    :goto_2
    if-lt v1, v6, :cond_2

    .line 202
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 203
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    iget-object v2, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    sget v3, Lccc71/pmw/lib/g;->eO:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 199
    :cond_2
    sget-object v3, Lccc71/pmw/lib/ew;->a:[I

    aget v3, v3, v1

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lccc71/pmw/lib/ew;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/pmw/b/g;->values()[Lccc71/pmw/b/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/pmw/b/g;->d:Lccc71/pmw/b/g;

    invoke-virtual {v1}, Lccc71/pmw/b/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/pmw/b/g;->a:Lccc71/pmw/b/g;

    invoke-virtual {v1}, Lccc71/pmw/b/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/pmw/b/g;->b:Lccc71/pmw/b/g;

    invoke-virtual {v1}, Lccc71/pmw/b/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/pmw/b/g;->c:Lccc71/pmw/b/g;

    invoke-virtual {v1}, Lccc71/pmw/b/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lccc71/pmw/lib/ew;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 76
    sget v1, Lccc71/pmw/lib/d;->gq:I

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 78
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    sget-object v1, Lccc71/pmw/b/g;->d:Lccc71/pmw/b/g;

    iput-object v1, v0, Lccc71/pmw/b/f;->a:Lccc71/pmw/b/g;

    .line 97
    :cond_0
    :goto_0
    invoke-direct {p0}, Lccc71/pmw/lib/ew;->a()V

    .line 98
    return-void

    .line 80
    :cond_1
    sget v1, Lccc71/pmw/lib/d;->gr:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    .line 82
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    sget-object v1, Lccc71/pmw/b/g;->b:Lccc71/pmw/b/g;

    iput-object v1, v0, Lccc71/pmw/b/f;->a:Lccc71/pmw/b/g;

    goto :goto_0

    .line 84
    :cond_2
    sget v1, Lccc71/pmw/lib/d;->gs:I

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_3

    .line 86
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    sget-object v1, Lccc71/pmw/b/g;->c:Lccc71/pmw/b/g;

    iput-object v1, v0, Lccc71/pmw/b/f;->a:Lccc71/pmw/b/g;

    goto :goto_0

    .line 88
    :cond_3
    sget v1, Lccc71/pmw/lib/d;->aD:I

    if-ne v0, v1, :cond_4

    .line 90
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iput-boolean p2, v0, Lccc71/pmw/b/f;->c:Z

    goto :goto_0

    .line 92
    :cond_4
    sget v1, Lccc71/pmw/lib/d;->aE:I

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iput-boolean p2, v0, Lccc71/pmw/b/f;->d:Z

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 104
    sget v1, Lccc71/pmw/lib/d;->R:I

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/b/f;)V

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lccc71/pmw/lib/ew;->dismiss()V

    .line 119
    return-void

    .line 110
    :cond_1
    sget v1, Lccc71/pmw/lib/d;->y:I

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v0, Lccc71/pmw/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccc71/pmw/b/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    .line 115
    iget-object v0, p0, Lccc71/pmw/lib/ew;->b:Landroid/content/Context;

    iget-object v1, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;Lccc71/pmw/b/f;)V

    goto :goto_0
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iput p3, v0, Lccc71/pmw/b/f;->e:I

    .line 125
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public final onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    sget v0, Lccc71/pmw/lib/d;->fI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/ew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    .line 136
    iget-object v1, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-object v1, v1, Lccc71/pmw/b/f;->b:Ljava/util/Date;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    .line 137
    iget-object v1, p0, Lccc71/pmw/lib/ew;->c:Lccc71/pmw/b/f;

    iget-object v1, v1, Lccc71/pmw/b/f;->b:Ljava/util/Date;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 138
    return-void
.end method
