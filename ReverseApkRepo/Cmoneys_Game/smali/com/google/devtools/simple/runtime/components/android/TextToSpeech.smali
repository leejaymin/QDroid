.class public Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MISC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Component for using TextToSpeech to speak a message"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final TTS_INTENT:Ljava/lang/String; = "com.google.tts.makeBagel"


# instance fields
.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private country:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private requestCode:I

.field private result:Z


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    const-string v1, ""

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->result:Z

    .line 62
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->language:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->country:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public AfterSpeaking(Z)V
    .locals 4
    .parameter "result"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "result As Boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 171
    const-string v0, "AfterSpeaking"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public BeforeSpeaking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 161
    const-string v0, "BeforeSpeaking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public Country()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->country:Ljava/lang/String;

    return-object v0
.end method

.method public Country(Ljava/lang/String;)V
    .locals 2
    .parameter "iso3Country"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v0, loc:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->country:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 2
    .parameter "iso3Language"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, loc:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->language:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public Result()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->result:Z

    return v0
.end method

.method public Speak(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->BeforeSpeaking()V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.tts.makeBagel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "language"

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "country"

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->requestCode:I

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->requestCode:I

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 147
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->result:Z

    .line 152
    :goto_0
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->result:Z

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->AfterSpeaking(Z)V

    .line 153
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextToSpeech;->result:Z

    goto :goto_0
.end method
