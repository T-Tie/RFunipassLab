; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0k563jtq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@arr = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_Z5solvei(i32 noundef %0)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5solvei(i32 noundef %n) local_unnamed_addr #3 {
entry:
  call void @_Z7arrayini(i32 noundef %n)
  %call = call noundef i32 @_Z9down_casti(i32 noundef %n) #8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7arrayini(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %cmp = icmp slt i32 0, %n
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z9down_casti(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %j = alloca i32, align 4
  %i70 = alloca i32, align 4
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %entry
  %cmp1 = icmp slt i32 0, %n
  br i1 %cmp1, label %for.body, label %for.end69

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.body5

for.body5:                                        ; preds = %for.body, %if.end14
  %min.0 = phi i32 [ 65535, %for.body ], [ %min.1, %if.end14 ]
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %0 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr @arr, i64 0, i64 %idxprom6
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !12
  %cmp8 = icmp slt i32 %1, %min.0
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %for.body5
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %for.body5
  %min.1 = phi i32 [ %1, %if.then9 ], [ %min.0, %for.body5 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #9
  br label %for.body5

for.end69:                                        ; preds = %for.cond
  %2 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @arr, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i70) #7
  store i32 2, ptr %i70, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.end91, %for.end69
  %cmp72 = icmp slt i32 2, %n
  br i1 %cmp72, label %for.body74, label %for.end119

for.body74:                                       ; preds = %for.cond71
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %for.body74
  %j75.0 = phi i32 [ 0, %for.body74 ], [ %inc90, %for.inc89 ]
  %cmp77 = icmp slt i32 %j75.0, %n
  br i1 %cmp77, label %for.inc89, label %for.end91

for.inc89:                                        ; preds = %for.cond76
  %3 = load i32, ptr %i70, align 4, !tbaa !5
  %idxprom80 = sext i32 %3 to i64
  %arrayidx81 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom80
  %idxprom82 = sext i32 %j75.0 to i64
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %arrayidx81, i64 0, i64 %idxprom82
  %4 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !12
  %sub84 = sub nsw i32 %3, 1
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [100 x i32], ptr %arrayidx86, i64 0, i64 %idxprom82
  store i32 %4, ptr %arrayidx88, align 4, !tbaa !5
  %inc90 = add nsw i32 %j75.0, 1
  br label %for.cond76, !llvm.loop !13

for.end91:                                        ; preds = %for.cond76
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i70) #9
  br label %for.cond71

for.end119:                                       ; preds = %for.cond71
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i70) #7
  %sub120 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z9down_casti(i32 noundef %sub120) #9
  %add = add nsw i32 %2, %call
  br label %return

return:                                           ; preds = %entry, %for.end119
  %retval.0 = phi i32 [ %add, %for.end119 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10matrix_outi(i32 noundef %n) local_unnamed_addr #3 {
for.cond:
  %j = alloca i32, align 4
  %cmp = icmp slt i32 0, %n
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.body4

for.body4:                                        ; preds = %for.body, %for.body4
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %0 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr @arr, i64 0, i64 %idxprom5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1)
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef @.str)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.body4

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #6 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nofree nosync nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
