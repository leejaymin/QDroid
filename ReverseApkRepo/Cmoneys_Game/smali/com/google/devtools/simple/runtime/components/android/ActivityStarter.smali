.class public Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->MISC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A component that can launch an activity using the <code>StartActivity</code> method.</p><p>Activities that can be launched include:<ul> <li> Starting another App Inventor for Android app.  To do so, first      find out the <em>class</em> of the other application by      downloading the source code and using a file explorer or unzip      utility to find a file named      \"youngandroidproject/project.properties\".  The first line of      the file will start with \"main=\" and be followed by the class      name; for example,      <code>main=com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>.       (The first components indicate that it was created by      Ben.Bitdiddle@gmail.com.)  To make your      <code>ActivityStarter</code> launch this application, set the      following properties: <ul>      <li> <code>ActivityPackage</code> to the class name, dropping the           last component (for example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr</code>)</li>      <li> <code>ActivityClass</code> to the entire class name (for           example,           <code>com.gmail.Bitdiddle.Ben.HelloPurr.Screen1</code>)</li>      </ul></li><li> Starting the camera application by setting the following      properties:<ul>      <li> <code>Action: android.intent.action.MAIN</code> </li>      <li> <code>ActivityPackage: com.android.camera</code> </li>      <li> <code>ActivityClass: com.android.camera.Camera</code></li>      </ul></li><li> Performing web search.  Assuming the term you want to search      for is \"vampire\" (feel free to substitute your own choice),      set the properties to:<blockquote><code>      Action: android.intent.action.WEB_SEARCH<br/>      ExtraKey: query<br/>      ExtraValue: vampire<br/>      ActivityPackage: com.google.android.providers.enhancedgooglesearch<br/>     ActivityClass: com.google.android.providers.enhancedgooglesearch.Launcher<br/>      </code></blockquote></li> <li> Opening a browser to a specified web page.  Assuming the page you      want to go to is \"www.facebook.com\" (feel free to substitute      your own choice), set the properties to: <blockquote><code>      Action: android.intent.action.VIEW <br/>      DataUri: http://www.facebook.com </code> </blockquote> </li> </ul></p>"
    designerHelpDescription = "<p>A component that can launch an activity using the <code>StartActivity</code> method.</p><p>Activities that can be launched include:<ul> <li> starting other App Inventor for Android apps </li> <li> starting the camera application </li> <li> performing web search </li> <li> opening a browser to a specified web page</li> <li> opening the map application to a specified location</li></ul> You can also launch activities that return text data.  See the documentation on using the Activity Starter for examples.</p>"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private activityClass:Ljava/lang/String;

.field private activityPackage:Ljava/lang/String;

.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private dataType:Ljava/lang/String;

.field private dataUri:Ljava/lang/String;

.field private extraKey:Ljava/lang/String;

.field private extraValue:Ljava/lang/String;

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private resultIntent:Landroid/content/Intent;

.field private resultName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    const-string v1, ""

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 115
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->result:Ljava/lang/String;

    .line 116
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->Action(Ljava/lang/String;)V

    .line 117
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->ActivityPackage(Ljava/lang/String;)V

    .line 118
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->ActivityClass(Ljava/lang/String;)V

    .line 119
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->DataUri(Ljava/lang/String;)V

    .line 120
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->DataType(Ljava/lang/String;)V

    .line 121
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->ExtraKey(Ljava/lang/String;)V

    .line 122
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->ExtraValue(Ljava/lang/String;)V

    .line 123
    const-string v0, ""

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->ResultName(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private buildActivityIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 398
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v2, v3

    .line 399
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    if-eqz v2, :cond_5

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 401
    .local v1, intent:Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    if-eqz v2, :cond_6

    .line 403
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityClass:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraValue:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    :cond_3
    return-object v1

    .line 398
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0

    .line 399
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_5
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->action:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_1

    .line 405
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method public Action()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->action:Ljava/lang/String;

    return-object v0
.end method

.method public Action(Ljava/lang/String;)V
    .locals 0
    .parameter "action"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->action:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public ActivityClass()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityClass:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityClass(Ljava/lang/String;)V
    .locals 0
    .parameter "activityClass"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityClass:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public ActivityError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that an error occurred while using this ActivityStarter."
    .end annotation

    .prologue
    .line 441
    const-string v0, "ActivityError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    return-void
.end method

.method public ActivityPackage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityPackage:Ljava/lang/String;

    return-object v0
.end method

.method public ActivityPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "activityPackage"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->activityPackage:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public AfterActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Event raised after this ActivityStarter returns."
    .end annotation

    .prologue
    .line 322
    const-string v0, "AfterActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public DataType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public DataType(Ljava/lang/String;)V
    .locals 0
    .parameter "dataType"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataType:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public DataUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataUri:Ljava/lang/String;

    return-object v0
.end method

.method public DataUri(Ljava/lang/String;)V
    .locals 0
    .parameter "dataUri"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->dataUri:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public ExtraKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraKey:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraKey(Ljava/lang/String;)V
    .locals 0
    .parameter "extraKey"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraKey:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public ExtraValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraValue:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraValue(Ljava/lang/String;)V
    .locals 0
    .parameter "extraValue"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->extraValue:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public ResolveActivity()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Returns the name of the activity that corresponds to this ActivityStarer, or an empty string if no corresponding activity can be found."
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 364
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v3}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 365
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 366
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 369
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->result:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultName:Ljava/lang/String;

    return-object v0
.end method

.method public ResultName(Ljava/lang/String;)V
    .locals 0
    .parameter "resultName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultName:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public ResultType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, resultType:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 337
    .end local v0           #resultType:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public ResultUri()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 346
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, resultUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 352
    .end local v0           #resultUri:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public StartActivity()V
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Start the activity corresponding to this ActivityStarter."
    .end annotation

    .prologue
    .line 377
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 378
    const-string v2, ""

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->result:Ljava/lang/String;

    .line 380
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->buildActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 382
    .local v1, intent:Landroid/content/Intent;
    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->requestCode:I

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v2}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v2

    iput v2, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->requestCode:I

    .line 391
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v2}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->requestCode:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 393
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "No corresponding activity was found."

    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->ActivityError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->unregisterForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)V

    .line 449
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 423
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->requestCode:I

    if-ne p1, v0, :cond_0

    .line 424
    const-string v0, "ActivityStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultReturned - resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 426
    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    .line 427
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->resultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->result:Ljava/lang/String;

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->AfterActivity(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void

    .line 431
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ActivityStarter;->result:Ljava/lang/String;

    goto :goto_0
.end method
