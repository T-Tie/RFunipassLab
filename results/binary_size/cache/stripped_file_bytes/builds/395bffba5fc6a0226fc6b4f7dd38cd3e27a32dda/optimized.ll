; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9exdzixw.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %a = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 10000)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call2 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %num.0 = phi i32 [ 0, %entry ], [ %num.1, %for.inc25 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %idx.ext = sext i32 %i.0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !5
  switch i8 %0, label %for.inc25 [
    i8 0, label %for.cond29.preheader
    i8 32, label %land.lhs.true
  ]

for.cond29.preheader:                             ; preds = %for.cond
  %sub30 = sub nsw i32 %conv, %num.0
  %smax29 = call i32 @llvm.smax.i32(i32 %sub30, i32 0)
  %wide.trip.count30 = zext nneg i32 %smax29 to i64
  br label %for.cond29

land.lhs.true:                                    ; preds = %for.cond
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 1
  %1 = load i8, ptr %add.ptr11, align 1, !tbaa !5
  %cmp13 = icmp eq i8 %1, 32
  br i1 %cmp13, label %for.cond14.preheader, label %for.inc25

for.cond14.preheader:                             ; preds = %land.lhs.true
  %2 = xor i32 %num.0, -1
  %sub15 = add i32 %2, %conv
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 %sub15)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body18
  %indvars.iv = phi i64 [ %idx.ext, %for.cond14.preheader ], [ %indvars.iv.next, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup17, label %for.body18

for.cond.cleanup17:                               ; preds = %for.cond14
  %dec = add nsw i32 %i.0, -1
  %inc24 = add nsw i32 %num.0, 1
  br label %for.inc25

for.body18:                                       ; preds = %for.cond14
  %add.ptr20 = getelementptr inbounds i8, ptr %a, i64 %indvars.iv
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %add.ptr20, i64 1
  %3 = load i8, ptr %add.ptr21, align 1, !tbaa !5
  store i8 %3, ptr %add.ptr20, align 1, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !8

for.inc25:                                        ; preds = %for.cond, %land.lhs.true, %for.cond.cleanup17
  %num.1 = phi i32 [ %inc24, %for.cond.cleanup17 ], [ %num.0, %land.lhs.true ], [ %num.0, %for.cond ]
  %i.1 = phi i32 [ %dec, %for.cond.cleanup17 ], [ %i.0, %land.lhs.true ], [ %i.0, %for.cond ]
  %inc26 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !11

for.cond29:                                       ; preds = %for.cond29.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv26 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, %wide.trip.count30
  br i1 %exitcond31.not, label %for.cond.cleanup32, label %for.body33

for.cond.cleanup32:                               ; preds = %for.cond29
  %vtable.i19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8
  %add.ptr.i22 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i21
  %call.i23 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i22, i8 noundef signext 10)
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i23)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %a) #6
  ret i32 0

for.body33:                                       ; preds = %for.cond29
  %add.ptr35 = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv26
  %4 = load i8, ptr %add.ptr35, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %4, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %5 = load i64, ptr %gep, align 8, !tbaa !14
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body33
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body33
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond29, !llvm.loop !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !7, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !6, i64 64, !22, i64 192, !23, i64 200, !24, i64 208}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"int", !6, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!26 = distinct !{!26, !9, !10}
