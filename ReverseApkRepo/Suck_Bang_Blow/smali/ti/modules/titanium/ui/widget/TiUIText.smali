.class public Lti/modules/titanium/ui/widget/TiUIText;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEYBOARD_ASCII:I = 0x0

.field private static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field private static final KEYBOARD_DEFAULT:I = 0x7

.field private static final KEYBOARD_EMAIL_ADDRESS:I = 0x5

.field private static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field private static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field private static final KEYBOARD_NUMBER_PAD:I = 0x3

.field private static final KEYBOARD_PHONE_PAD:I = 0x4

.field private static final KEYBOARD_URL:I = 0x2

.field private static final LCAT:Ljava/lang/String; = "TiUIText"

.field public static final RETURNKEY_DEFAULT:I = 0x9

.field public static final RETURNKEY_DONE:I = 0x7

.field public static final RETURNKEY_EMERGENCY_CALL:I = 0x8

.field public static final RETURNKEY_GO:I = 0x0

.field public static final RETURNKEY_GOOGLE:I = 0x1

.field public static final RETURNKEY_JOIN:I = 0x2

.field public static final RETURNKEY_NEXT:I = 0x3

.field public static final RETURNKEY_ROUTE:I = 0x4

.field public static final RETURNKEY_SEARCH:I = 0x5

.field public static final RETURNKEY_SEND:I = 0xa

.field public static final RETURNKEY_YAHOO:I = 0x6

.field private static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field private static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field private static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field private static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2


# instance fields
.field private field:Z

.field protected tv:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V
    .locals 3
    .parameter "proxy"
    .parameter "field"

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 78
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "TiUIText"

    const-string v1, "Creating a text field"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    .line 82
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIText;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    .line 83
    if-eqz p2, :cond_1

    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 92
    if-eqz p2, :cond_2

    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 97
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->setNativeView(Landroid/view/View;)V

    .line 99
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 203
    return-void
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 234
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 235
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-object v0
.end method

.method public handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .parameter "d"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "autocorrect"

    const-string v10, "TiUIText"

    const-string v9, "autocapitalization"

    .line 273
    const/4 v3, 0x0

    .line 274
    .local v3, type:I
    const/4 v2, 0x0

    .line 275
    .local v2, passwordMask:Z
    const v1, 0x8000

    .line 276
    .local v1, autocorrect:I
    const/4 v0, 0x0

    .line 278
    .local v0, autoCapValue:I
    const-string v5, "autocorrect"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 279
    const-string v5, "autocorrect"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 280
    const v1, 0x8000

    .line 286
    :cond_0
    :goto_0
    const-string v5, "autocapitalization"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    const-string v5, "autocapitalization"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 307
    const-string v5, "TiUIText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown AutoCapitalization Value ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "autocapitalization"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_1
    :goto_1
    const-string v5, "passwordMask"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    const-string v5, "passwordMask"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v2

    .line 316
    :cond_2
    const-string v5, "keyboardType"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    const-string v5, "keyboardType"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v3

    .line 320
    :cond_3
    or-int v4, v1, v0

    .line 322
    .local v4, typeModifiers:I
    packed-switch v3, :pswitch_data_1

    .line 372
    :goto_2
    :pswitch_0
    if-eqz v2, :cond_4

    .line 373
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 375
    :cond_4
    iget-boolean v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-nez v5, :cond_5

    .line 376
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 378
    :cond_5
    return-void

    .line 282
    .end local v4           #typeModifiers:I
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 290
    :pswitch_1
    const/4 v0, 0x0

    .line 291
    goto :goto_1

    .line 293
    :pswitch_2
    const/16 v0, 0x7000

    .line 297
    goto :goto_1

    .line 299
    :pswitch_3
    const/16 v0, 0x4000

    .line 300
    goto :goto_1

    .line 303
    :pswitch_4
    const/16 v0, 0x2000

    .line 304
    goto :goto_1

    .line 324
    .restart local v4       #typeModifiers:I
    :pswitch_5
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    if-eqz v1, :cond_7

    move v6, v7

    :goto_3
    sget-object v7, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v6, v7}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 325
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    :cond_7
    move v6, v8

    .line 324
    goto :goto_3

    .line 328
    :pswitch_6
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 329
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    new-instance v6, Lti/modules/titanium/ui/widget/TiUIText$1;

    invoke-direct {v6, p0}, Lti/modules/titanium/ui/widget/TiUIText$1;-><init>(Lti/modules/titanium/ui/widget/TiUIText;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_2

    .line 350
    :pswitch_7
    const-string v5, "TiUIText"

    const-string v5, "Setting keyboard type URL-3"

    invoke-static {v10, v5}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 353
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 357
    :pswitch_8
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {v7, v7}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 358
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 361
    :pswitch_9
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 362
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2

    .line 365
    :pswitch_a
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x21

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2

    .line 368
    :pswitch_b
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    if-eqz v1, :cond_8

    move v6, v7

    :goto_4
    sget-object v7, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v6, v7}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 369
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    or-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_2

    :cond_8
    move v6, v8

    .line 368
    goto :goto_4

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 322
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public handleReturnKeyType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x2

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 384
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 393
    :pswitch_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 396
    :pswitch_4
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 399
    :pswitch_5
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 402
    :pswitch_6
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 405
    :pswitch_7
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 408
    :pswitch_8
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 411
    :pswitch_9
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 414
    :pswitch_a
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "textAlign"
    .parameter "verticalAlign"

    .prologue
    .line 262
    if-nez p2, :cond_0

    .line 263
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->field:Z

    if-eqz v0, :cond_2

    const-string v0, "middle"

    move-object p2, v0

    .line 265
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 266
    const-string p1, "left"

    .line 268
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void

    .line 263
    :cond_2
    const-string v0, "top"

    move-object p2, v0

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "keyEvent"

    .prologue
    const-string v5, "value"

    .line 241
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, value:Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 243
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "value"

    invoke-virtual {v0, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "value"

    invoke-virtual {v3, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v3, :cond_0

    .line 247
    const-string v3, "TiUIText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KeyEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 250
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "return"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 253
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "enableReturnKey"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 254
    .local v1, enableReturnKey:Ljava/lang/Boolean;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 255
    const/4 v3, 0x1

    .line 257
    :goto_1
    return v3

    .line 247
    .end local v1           #enableReturnKey:Ljava/lang/Boolean;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 257
    .restart local v1       #enableReturnKey:Ljava/lang/Boolean;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 218
    if-eqz p2, :cond_1

    .line 219
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "clearOnEdit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 220
    .local v0, clearOnEdit:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v1, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 225
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 228
    .end local v0           #clearOnEdit:Ljava/lang/Boolean;
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->onFocusChange(Landroid/view/View;Z)V

    .line 229
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const-string v4, "value"

    .line 208
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, value:Ljava/lang/String;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 210
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v2, v4, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 214
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .parameter "d"

    .prologue
    const-string v8, "enabled"

    const-string v7, "ellipsize"

    const-string v6, "color"

    const-string v5, "verticalAlign"

    const-string v4, "textAlign"

    .line 105
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 107
    const-string v2, "enabled"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v3, "enabled"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 110
    :cond_0
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v3, "value"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    const-string v2, "color"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v3, "color"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 116
    :cond_2
    const-string v2, "hintText"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 119
    :cond_3
    const-string v2, "ellipsize"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    const-string v2, "ellipsize"

    invoke-static {p1, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 121
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 126
    :cond_4
    :goto_0
    const-string v2, "font"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const-string v3, "font"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 129
    :cond_5
    const-string v2, "textAlign"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "verticalAlign"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 130
    :cond_6
    const/4 v0, 0x0

    .line 131
    .local v0, textAlign:Ljava/lang/String;
    const/4 v1, 0x0

    .line 132
    .local v1, verticalAlign:Ljava/lang/String;
    const-string v2, "textAlign"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    const-string v2, "textAlign"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_7
    const-string v2, "verticalAlign"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    const-string v2, "verticalAlign"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_8
    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0           #textAlign:Ljava/lang/String;
    .end local v1           #verticalAlign:Ljava/lang/String;
    :cond_9
    const-string v2, "returnKeyType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    const-string v2, "returnKeyType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    .line 143
    :cond_a
    const-string v2, "keyboardType"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "autocorrect"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "passwordMask"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "autocapitalization"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 145
    :cond_b
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    .line 147
    :cond_c
    return-void

    .line 123
    :cond_d
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 8
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const-string v7, "verticalAlign"

    const-string v6, "textAlign"

    .line 153
    sget-boolean v3, Lti/modules/titanium/ui/widget/TiUIText;->DBG:Z

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "TiUIText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const-string v3, "enabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 194
    .end local p3
    :goto_0
    return-void

    .line 158
    .restart local p3
    :cond_1
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    .restart local p3
    :cond_2
    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 162
    .restart local p3
    :cond_3
    const-string v3, "hintText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    .restart local p3
    :cond_4
    const-string v3, "ellipsize"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 165
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 168
    :cond_5
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 170
    :cond_6
    const-string v3, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "verticalAlign"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 171
    :cond_7
    const/4 v1, 0x0

    .line 172
    .local v1, textAlign:Ljava/lang/String;
    const/4 v2, 0x0

    .line 173
    .local v2, verticalAlign:Ljava/lang/String;
    const-string v3, "textAlign"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 174
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_8
    :goto_1
    const-string v3, "verticalAlign"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 179
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 183
    :cond_9
    :goto_2
    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/TiUIText;->handleTextAlign(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_a
    const-string v3, "textAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 176
    const-string v3, "textAlign"

    invoke-virtual {p4, v6}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 180
    :cond_b
    const-string v3, "verticalAlign"

    invoke-virtual {p4, v7}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 181
    const-string v3, "verticalAlign"

    invoke-virtual {p4, v7}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 184
    .end local v1           #textAlign:Ljava/lang/String;
    .end local v2           #verticalAlign:Ljava/lang/String;
    :cond_c
    const-string v3, "keyboardType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "autocorrect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "autocapitalization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "passwordMask"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 185
    :cond_d
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 186
    .local v0, d:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIText;->handleKeyboard(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 187
    .end local v0           #d:Lorg/appcelerator/kroll/KrollDict;
    :cond_e
    const-string v3, "returnKeyType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 188
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/TiUIText;->handleReturnKeyType(I)V

    goto/16 :goto_0

    .line 189
    :cond_f
    const-string v3, "font"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 190
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIText;->tv:Landroid/widget/EditText;

    check-cast p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3
    invoke-static {v3, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 192
    .restart local p3
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method
