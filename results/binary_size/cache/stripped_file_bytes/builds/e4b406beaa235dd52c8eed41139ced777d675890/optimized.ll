; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_mqo1cn9.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %len = alloca [1000 x i32], align 16
  %a = alloca [1000 x [40 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %len) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %while.cond

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [40 x i8]], ptr %a, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx) #6
  %2 = trunc i64 %call5 to i32
  %conv = add i32 %2, 1
  %arrayidx7 = getelementptr inbounds nuw [1000 x i32], ptr %len, i64 0, i64 %indvars.iv
  store i32 %conv, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %for.cond, %while.end
  %3 = phi i32 [ %.pre, %while.end ], [ %0, %for.cond ]
  %i.1 = phi i32 [ %9, %while.end ], [ 0, %for.cond ]
  %cmp8 = icmp slt i32 %i.1, %3
  br i1 %cmp8, label %while.cond9.preheader, label %while.end39

while.cond9.preheader:                            ; preds = %while.cond
  %4 = sext i32 %i.1 to i64
  %arrayidx11.phi.trans.insert = getelementptr inbounds [1000 x i32], ptr %len, i64 0, i64 %4
  %.pre46 = load i32, ptr %arrayidx11.phi.trans.insert, align 4, !tbaa !5
  br label %while.cond9

while.cond9:                                      ; preds = %while.cond9.backedge, %while.cond9.preheader
  %5 = phi i32 [ %.pre46, %while.cond9.preheader ], [ %6, %while.cond9.backedge ]
  %indvars.iv43 = phi i64 [ %4, %while.cond9.preheader ], [ %indvars.iv.next44, %while.cond9.backedge ]
  %sum.0 = phi i32 [ 0, %while.cond9.preheader ], [ %add12, %while.cond9.backedge ]
  %add12 = add nsw i32 %5, %sum.0
  %cmp13 = icmp slt i32 %add12, 82
  br i1 %cmp13, label %while.body14, label %while.end

while.body14:                                     ; preds = %while.cond9
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  %arrayidx20 = getelementptr inbounds [1000 x i32], ptr %len, i64 0, i64 %indvars.iv.next44
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add21 = add nsw i32 %6, %add12
  %cmp22 = icmp slt i32 %add21, 82
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %7, -1
  %8 = sext i32 %sub to i64
  %cmp24 = icmp slt i64 %indvars.iv43, %8
  %cmp27 = and i1 %cmp22, %cmp24
  %arrayidx29 = getelementptr inbounds [1000 x [40 x i8]], ptr %a, i64 0, i64 %indvars.iv43
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx29) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx29, i64 noundef %call.i.i)
  br i1 %cmp27, label %if.then, label %while.cond9.backedge

while.cond9.backedge:                             ; preds = %while.body14, %if.then
  br label %while.cond9, !llvm.loop !12

if.then:                                          ; preds = %while.body14
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %while.cond9.backedge

while.end:                                        ; preds = %while.cond9
  %9 = trunc nsw i64 %indvars.iv43 to i32
  %vtable.i28 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i29 = getelementptr i8, ptr %vtable.i28, i64 -24
  %vbase.offset.i30 = load i64, ptr %vbase.offset.ptr.i29, align 8
  %add.ptr.i31 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i30
  %call.i32 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i31, i8 noundef signext 10)
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i32)
  %call.i.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i33)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !15

while.end39:                                      ; preds = %while.cond
  %vtable.i35 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i36 = getelementptr i8, ptr %vtable.i35, i64 -24
  %vbase.offset.i37 = load i64, ptr %vbase.offset.ptr.i36, align 8
  %add.ptr.i38 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i37
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i38, i8 noundef signext 10)
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i39)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
