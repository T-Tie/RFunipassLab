; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdyn5ti16.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef align 16 %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond.cleanup9, %for.end
  %i2.0 = phi i32 [ 0, %for.end ], [ %inc30, %for.cond.cleanup9 ]
  %cmp4 = icmp slt i32 %i2.0, %0
  br i1 %cmp4, label %for.body6, label %for.end31

for.body6:                                        ; preds = %for.cond3
  %sub = sub nsw i32 %0, 1
  br label %for.cond7

for.cond7:                                        ; preds = %if.end, %for.body6
  %j.0 = phi i32 [ %sub, %for.body6 ], [ %dec, %if.end ]
  %cmp8 = icmp sgt i32 %j.0, %i2.0
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  %inc30 = add nsw i32 %i2.0, 1
  br label %for.cond3, !llvm.loop !12

for.body10:                                       ; preds = %for.cond7
  %sub11 = sub nsw i32 %j.0, 1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom12
  %1 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %idxprom14 = sext i32 %j.0 to i64
  %arrayidx15 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom14
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %1, %2
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  store i32 %2, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %1, ptr %arrayidx15, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  %dec = add nsw i32 %j.0, -1
  br label %for.cond7, !llvm.loop !13

for.end31:                                        ; preds = %for.cond3
  br label %for.cond33

for.cond33:                                       ; preds = %if.end49, %for.end31
  %cnt.0 = phi i32 [ 0, %for.end31 ], [ %cnt.1, %if.end49 ]
  %i32.0 = phi i32 [ 0, %for.end31 ], [ %inc51, %if.end49 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %i32.0, %3
  br i1 %cmp34, label %for.body36, label %for.end52

for.body36:                                       ; preds = %for.cond33
  %idxprom37 = sext i32 %i32.0 to i64
  %arrayidx38 = getelementptr inbounds [500 x i32], ptr %num, i64 0, i64 %idxprom37
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %rem = srem i32 %4, 2
  %cmp39 = icmp eq i32 %rem, 1
  br i1 %cmp39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %for.body36
  %cmp41 = icmp ne i32 %cnt.0, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then40
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 44)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40
  %5 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %inc48 = add nsw i32 %cnt.0, 1
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %for.body36
  %cnt.1 = phi i32 [ %inc48, %if.end44 ], [ %cnt.0, %for.body36 ]
  %inc51 = add nsw i32 %i32.0, 1
  br label %for.cond33, !llvm.loop !14

for.end52:                                        ; preds = %for.cond33
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef %num) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
