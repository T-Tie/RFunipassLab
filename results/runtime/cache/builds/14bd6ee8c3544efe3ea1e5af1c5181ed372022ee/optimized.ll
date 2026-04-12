; ModuleID = '<stdin>'
source_filename = "/tmp/tmptf3pe3k3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc14, %for.inc13 ]
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %for.inc13 ]
  %cmp3 = icmp slt i32 %j.0, %0
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp7 = icmp eq i32 %rem, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %k.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %k.1 = phi i32 [ %inc12, %if.then ], [ %k.0, %for.body4 ]
  %inc14 = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !12

for.end15:                                        ; preds = %for.cond2
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc44, %for.end15
  %m.0 = phi i32 [ 0, %for.end15 ], [ %inc45, %for.inc44 ]
  %sub = sub nsw i32 %k.0, 1
  %cmp17 = icmp slt i32 %m.0, %sub
  br i1 %cmp17, label %for.body18, label %for.end46

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc41, %for.body18
  %c.0 = phi i32 [ 0, %for.body18 ], [ %add, %for.inc41 ]
  %m.0.neg = sub i32 0, %m.0
  %sub20 = add i32 %k.0, -1
  %sub21 = add i32 %sub20, %m.0.neg
  %cmp22 = icmp slt i32 %c.0, %sub21
  br i1 %cmp22, label %for.body23, label %for.inc44

for.body23:                                       ; preds = %for.cond19
  %idxprom24 = sext i32 %c.0 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom24
  %2 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %add = add nsw i32 %c.0, 1
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom26
  %3 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %2, %3
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  store i32 %3, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  br label %for.cond19, !llvm.loop !13

for.inc44:                                        ; preds = %for.cond19
  %inc45 = add nsw i32 %m.0, 1
  br label %for.cond16, !llvm.loop !14

for.end46:                                        ; preds = %for.cond16
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc55, %for.end46
  %d.0 = phi i32 [ 0, %for.end46 ], [ %inc56, %for.inc55 ]
  %cmp49 = icmp slt i32 %d.0, %sub
  br i1 %cmp49, label %for.inc55, label %for.end57

for.inc55:                                        ; preds = %for.cond47
  %idxprom51 = sext i32 %d.0 to i64
  %arrayidx52 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom51
  %4 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call53, ptr noundef nonnull dereferenceable(2) @.str)
  %inc56 = add nsw i32 %d.0, 1
  br label %for.cond47, !llvm.loop !15

for.end57:                                        ; preds = %for.cond47
  %idxprom59 = sext i32 %sub to i64
  %arrayidx60 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom59
  %5 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %a) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) local_unnamed_addr #5 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #6 comdat {
entry:
  %or = or i32 %__b, %__a
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
