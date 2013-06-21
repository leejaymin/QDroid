.class public Lcom/google/devtools/simple/runtime/components/android/EmailPicker;
.super Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;
.source "EmailPicker.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->SOCIAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A text box in which a user can begin entering an email address of a contact and be offered auto-completion.  The initial value of the box and the value after user entry is in the <code>Text</code> property.  If the <code>Text</code> property is initially empty, the contents of the <code>Hint</code> property will be faintly shown in the text box as a hint to the user.</p> <p>Other properties affect the appearance of the text box (<code>Alignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# instance fields
.field private addressAdapter:Lcom/google/devtools/simple/runtime/components/android/EmailAddressAdapter;

.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 51
    new-instance v0, Landroid/widget/AutoCompleteTextView;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;Landroid/widget/EditText;)V

    .line 52
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/EmailAddressAdapter;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/EmailPicker;->addressAdapter:Lcom/google/devtools/simple/runtime/components/android/EmailAddressAdapter;

    .line 53
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/EmailPicker;->addressAdapter:Lcom/google/devtools/simple/runtime/components/android/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/EmailPicker;->context:Landroid/app/Activity;

    .line 55
    return-void
.end method


# virtual methods
.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 66
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/EmailPicker;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;-><init>(Landroid/app/Activity;)V

    const-string v1, "the EmailPicker component"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->warnNotSupported(Ljava/lang/String;)V

    .line 68
    :cond_0
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method
