.class public Lcom/android/settingsstock/DebugIntentSender;
.super Landroid/app/Activity;
.source "DebugIntentSender.java"


# instance fields
.field private mAccountField:Landroid/widget/EditText;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mDataField:Landroid/widget/EditText;

.field private mIntentField:Landroid/widget/EditText;

.field private mResourceField:Landroid/widget/EditText;

.field private mSendBroadcastButton:Landroid/widget/Button;

.field private mStartActivityButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingsstock/DebugIntentSender$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DebugIntentSender$1;-><init>(Lcom/android/settingsstock/DebugIntentSender;)V

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/DebugIntentSender;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/DebugIntentSender;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mAccountField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/DebugIntentSender;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mResourceField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->setContentView(I)V

    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    const-string v1, "android.intent.action.SYNC"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mIntentField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mDataField:Landroid/widget/EditText;

    const v1, 0x1080018

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mAccountField:Landroid/widget/EditText;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mResourceField:Landroid/widget/EditText;

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mSendBroadcastButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DebugIntentSender;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/DebugIntentSender;->mStartActivityButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/DebugIntentSender;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
