; ModuleID = '<stdin>'
source_filename = "/tmp/tmpstq7j00h.cpp"
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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [100 x [110 x i8]], align 16
  %lon = alloca [100 x i32], align 16
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 11000, ptr noundef nonnull %str) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %lon) #7
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %c) #7
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %n.1, %do.cond ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %c)
  %0 = load i8, ptr %c, align 1, !tbaa !5
  %cmp = icmp sgt i8 %0, 64
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %cmp2 = icmp samesign ult i8 %0, 123
  br i1 %cmp2, label %if.end.thread, label %do.cond

if.end.thread:                                    ; preds = %land.lhs.true
  %idxprom = sext i32 %n.0 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %lon, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !8, !invariant.load !10
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [100 x [110 x i8]], ptr %str, i64 0, i64 %idxprom, i64 %idxprom5
  store i8 %0, ptr %arrayidx6, align 1, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %arrayidx4, align 4, !tbaa !8
  br label %do.cond

if.end:                                           ; preds = %do.body
  %cmp10 = icmp eq i8 %0, 32
  %inc12 = zext i1 %cmp10 to i32
  %spec.select = add nsw i32 %n.0, %inc12
  br label %do.cond

do.cond:                                          ; preds = %if.end, %if.end.thread, %land.lhs.true
  %n.1 = phi i32 [ %n.0, %land.lhs.true ], [ %n.0, %if.end.thread ], [ %spec.select, %if.end ]
  %cmp15.not = icmp eq i8 %0, 10
  br i1 %cmp15.not, label %for.cond, label %do.body, !llvm.loop !11

for.cond:                                         ; preds = %do.cond, %for.inc33
  %n.2 = phi i32 [ %dec, %for.inc33 ], [ %n.1, %do.cond ]
  %cmp16 = icmp sgt i32 %n.2, -1
  br i1 %cmp16, label %for.cond17.preheader, label %for.end34

for.cond17.preheader:                             ; preds = %for.cond
  %idxprom18 = zext nneg i32 %n.2 to i64
  %arrayidx19 = getelementptr inbounds nuw [100 x i32], ptr %lon, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !8, !invariant.load !10
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond17
  %arrayidx25 = getelementptr inbounds nuw [100 x [110 x i8]], ptr %str, i64 0, i64 %idxprom18, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx25, align 1, !tbaa !5, !invariant.load !10
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond17, !llvm.loop !14

for.end:                                          ; preds = %for.cond17
  %cmp28.not = icmp eq i32 %n.2, 0
  br i1 %cmp28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %for.end
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc33

if.else:                                          ; preds = %for.end
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc33

for.inc33:                                        ; preds = %if.then29, %if.else
  %dec = add nsw i32 %n.2, -1
  br label %for.cond, !llvm.loop !15

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %lon) #8
  call void @llvm.lifetime.end.p0(i64 noundef 11000, ptr noundef nonnull %str) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi3getERc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
