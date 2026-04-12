; ModuleID = '<stdin>'
source_filename = "/tmp/tmpr4ut6v9k.cpp"
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
  %a = alloca [201 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 201, ptr noundef nonnull align 16 captures(none) dereferenceable(201) %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(201) %a, i64 noundef 201)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = trunc i64 %call2 to i32
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %p.0 = phi ptr [ %a, %entry ], [ %p.1, %if.end ]
  %i.0 = phi i32 [ 1, %entry ], [ %i.1, %if.end ]
  %cmp.not = icmp sgt i32 %i.0, %conv
  br i1 %cmp.not, label %while.end14, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i8, ptr %p.0, align 1, !tbaa !5
  %cmp5.not = icmp eq i8 %0, 32
  br i1 %cmp5.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %0)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  %inc = add nsw i32 %i.0, 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 32)
  br label %while.cond8

while.cond8:                                      ; preds = %while.body11, %if.else
  %p.2 = phi ptr [ %p.0, %if.else ], [ %incdec.ptr12, %while.body11 ]
  %i.2 = phi i32 [ %i.0, %if.else ], [ %inc13, %while.body11 ]
  %1 = load i8, ptr %p.2, align 1, !tbaa !5
  %cmp10 = icmp eq i8 %1, 32
  br i1 %cmp10, label %while.body11, label %if.end

while.body11:                                     ; preds = %while.cond8
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %p.2, i64 1
  %inc13 = add nsw i32 %i.2, 1
  br label %while.cond8, !llvm.loop !8

if.end:                                           ; preds = %while.cond8, %if.then
  %p.1 = phi ptr [ %incdec.ptr, %if.then ], [ %p.2, %while.cond8 ]
  %i.1 = phi i32 [ %inc, %if.then ], [ %i.2, %while.cond8 ]
  br label %while.cond, !llvm.loop !11

while.end14:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 201, ptr noundef nonnull captures(none) %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
