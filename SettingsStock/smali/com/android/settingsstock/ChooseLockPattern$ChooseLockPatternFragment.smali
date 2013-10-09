.class public Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# static fields
.field public static final CONFIRM_EXISTING_REQUEST:I = 0x37

.field private static final ID_EMPTY_MESSAGE:I = -0x1

.field static final INFORMATION_MSG_TIMEOUT_MS:I = 0xbb8

.field private static final KEY_PATTERN_CHOICE:Ljava/lang/String; = "chosenPattern"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "uiStage"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    sget-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v8

    if-nez v8, :cond_2

    move v4, v6

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.weak_fallback"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.weak_fallback_for"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "settings_command_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "settings_command_value"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v5, v7, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;ZLjava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    if-eqz v4, :cond_1

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    move v4, v7

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    sget-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    sget-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const v5, 0x7f040018

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView;

    iput-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v6, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    const v5, 0x7f08002d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const v5, 0x7f08002e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const v5, 0x7f08002f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f08002b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "confirm_credentials"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p3, :cond_2

    if-eqz v0, :cond_1

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    iget-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    const/16 v6, 0x37

    invoke-virtual {v5, v6, v8, v8}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_2
    const-string v5, "chosenPattern"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    :cond_3
    invoke-static {}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v5

    const-string v6, "uiStage"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object p1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v1, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v1, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    :goto_3
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    sget-object v1, Lcom/android/settingsstock/ChooseLockPattern$1;->$SwitchMap$com$android$settingsstock$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v2, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_4
    :pswitch_0
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v3, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    :pswitch_3
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    :pswitch_4
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    :pswitch_5
    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
